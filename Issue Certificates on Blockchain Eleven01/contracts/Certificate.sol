pragma solidity ^0.4.24;

contract Certificate {

    address public admin;
    
    constructor() public {
        admin = msg.sender;
        certificateDataCount = 0;
    }

    struct CertificateData {
        uint Id;
        address Issuer;
        bytes32 EmpId;
        bytes32 IssuerName;
        string CandidateName;
        string CourseName;
        string Location;
        string DateOfStart;
        string DateOfCompletion;
        uint NumHours;
    }
    
    event CertificateEvent(
        bytes32 EmpId,
        bytes32 IssuerName,
        string CandidateName,
        string CourseName,
        string Location,
        string DateOfStart,
        string DateOfCompletion,
        uint NumHours
        
    );
    
    CertificateData[] public certificateData;

    uint public certificateDataCount;

    mapping(address => CertificateData) issueCertificate;

    function certificateIssue(
        bytes32 EmpId,
        bytes32 IssuerName,
        string memory CandidateName,
        string memory CourseName,
        string memory Location,
        string memory DateOfStart,
        string memory DateOfCompletion,
        uint NumHours) public {
        certificateDataCount += 1;
        CertificateData memory _cData = CertificateData(certificateDataCount, msg.sender,EmpId,IssuerName,CandidateName,CourseName,Location,DateOfStart,DateOfCompletion,NumHours);
        certificateData.push(_cData);
        issueCertificate[msg.sender] = _cData;
        
        emit CertificateEvent(EmpId,IssuerName,CandidateName,CourseName,Location,DateOfStart,DateOfCompletion,NumHours);
    }
}