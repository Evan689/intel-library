.class public Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
.super Lcom/zkteco/android/biometric/core/exception/BiometricHandleException;
.source "IDCardReaderException.java"


# static fields
.field private static final CLOSE_CARD_READER_DEVICE_FAILED:Ljava/lang/String; = "Close Card reader device failed"

.field private static final CONTROL_CARD_READER_DEVICE_FAILED:Ljava/lang/String; = "Control Card reader device failed"

.field private static final FINDCARD_CARD_READER_STATUS_FAILED:Ljava/lang/String; = "find Card failed"

.field private static final GET_CARD_READER_DEVICE_STATUS_FAILED:Ljava/lang/String; = "Get Card reader device Status failed"

.field private static final GET_VERSION_NUM_CARD_READER_FAILED:Ljava/lang/String; = "MF_write Card failed"

.field private static final MF_GET_BANKCARDNUM_FAIL:Ljava/lang/String; = "Get Bank CardNum fail"

.field private static final MF_GET_DNCODE_FAIL:Ljava/lang/String; = "Get DN code fail"

.field private static final MF_GET_PhysicalCardNum_CARD_READER_FAILED:Ljava/lang/String; = "MF_write Card failed"

.field private static final MF_GET_SNR_CARD_READER_FAILED:Ljava/lang/String; = "MF_write Card failed"

.field private static final MF_ISO15693_INVNTORY:Ljava/lang/String; = "ISO15693 Inventory fail"

.field private static final MF_READ_CARDMANAGE_FAIL:Ljava/lang/String; = "Get CardManage code fail"

.field private static final MF_READ_CARD_READER_FAILED:Ljava/lang/String; = "MF_read Card failed"

.field private static final MF_SET_HALT_FAIL:Ljava/lang/String; = "MF_SETHalt fail"

.field private static final MF_TRANSPORTDEVICE_NOTSUPPORT:Ljava/lang/String; = "not support"

.field private static final MF_WRITE_CARD_READER_FAILED:Ljava/lang/String; = "MF_write Card failed"

.field private static final OPEN_CARD_READER_DEVICE_FAILED:Ljava/lang/String; = "Open Card reader device failed"

.field private static final READ_CARD_READER_STATUS_FAILED:Ljava/lang/String; = "read Card failed"

.field private static final RESET_CARD_READER_DEVICE_FAILED:Ljava/lang/String; = "Reset Card reader device failed"

.field private static final SELECT_CARD_READER_STATUS_FAILED:Ljava/lang/String; = "select Card failed"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/zkteco/android/biometric/core/exception/BiometricHandleException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/zkteco/android/biometric/core/exception/BiometricHandleException;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static GetBankCardNumFail(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 109
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Get Bank CardNum fail"

    const/16 v2, -0x4e36

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static GetDNCodeFail(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 113
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Get DN code fail"

    const/16 v2, -0x4e37

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static Get_VersionNumICCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 91
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "MF_write Card failed"

    const/16 v2, -0x4e2f

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static ISO15693_INVENTORY_Failed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 105
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "ISO15693 Inventory fail"

    const/16 v2, -0x4e35

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static MFReadICCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 85
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "MF_read Card failed"

    const/16 v2, -0x4e2e

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static MFWriteICCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 88
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "MF_write Card failed"

    const/16 v2, -0x4e2d

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static MF_GET_PhysicalCardNumICCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 97
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "MF_write Card failed"

    const/16 v2, -0x4e33

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static MF_GET_SNRICCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 94
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "MF_write Card failed"

    const/16 v2, -0x4e30

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static MF_SET_HaltFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 101
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "MF_SETHalt fail"

    const/16 v2, -0x4e34

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static ReadCardManageFaile(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 117
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Get CardManage code fail"

    const/16 v2, -0x4e38

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static TransportDeviceNotSupport(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 121
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "not support"

    const/16 v2, -0x4e2b

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static closeIDCardReaderFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 57
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Close Card reader device failed"

    const/16 v2, -0x4e22

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static controlIDCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 61
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Control Card reader device failed"

    const/16 v2, -0x4e23

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static findCardIDCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 73
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "find Card failed"

    const/16 v2, -0x4e28

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static getstatusIDCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 69
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Get Card reader device Status failed"

    const/16 v2, -0x4e27

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static openIDCardReaderFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 53
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Open Card reader device failed"

    const/16 v2, -0x4e21

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static readCardIDCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 81
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "read Card failed"

    const/16 v2, -0x4e2a

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static resetIDCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 65
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "Reset Card reader device failed"

    const/16 v2, -0x4e26

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static selectCardIDCardDeviceFailed(I)Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;
    .registers 4

    .line 77
    new-instance v0, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;

    const-string v1, "select Card failed"

    const/16 v2, -0x4e29

    invoke-direct {v0, v1, v2, p0}, Lcom/zkteco/android/biometric/module/idcard/exception/IDCardReaderException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
