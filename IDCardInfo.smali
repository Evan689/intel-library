.class public Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;
.super Ljava/lang/Object;
.source "IDCardInfo.java"


# static fields
.field private static final BOY_CODE:Ljava/lang/String; = "1"

.field private static final NATION_ARRAY:[Ljava/lang/String;


# instance fields
.field private address:Ljava/lang/String;

.field private birth:Ljava/lang/String;

.field private cardType:I

.field private content:[B

.field private contentLength:I

.field private depart:Ljava/lang/String;

.field private fpdata:[B

.field private fplength:I

.field private id:Ljava/lang/String;

.field private licType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nation:Ljava/lang/String;

.field private passNum:Ljava/lang/String;

.field private photo:[B

.field private photolength:I

.field private sex:Ljava/lang/String;

.field private validityTime:Ljava/lang/String;

.field private visaTimes:I


# direct methods
.method static constructor <clinit>()V
    .registers 57

    const-string v0, ""

    const-string v1, "汉"

    const-string v2, "蒙古"

    const-string v3, "回"

    const-string v4, "藏"

    const-string v5, "维吾尔"

    const-string v6, "苗"

    const-string v7, "彝"

    const-string v8, "壮"

    const-string v9, "布依"

    const-string v10, "朝鲜"

    const-string v11, "满"

    const-string v12, "侗"

    const-string v13, "瑶"

    const-string v14, "白"

    const-string v15, "土家"

    const-string v16, "哈尼"

    const-string v17, "哈萨克"

    const-string v18, "傣"

    const-string v19, "黎"

    const-string v20, "傈僳"

    const-string v21, "佤"

    const-string v22, "畲"

    const-string v23, "高山"

    const-string v24, "拉祜"

    const-string v25, "水"

    const-string v26, "东乡"

    const-string v27, "纳西"

    const-string v28, "景颇"

    const-string v29, "柯尔克孜"

    const-string v30, "土"

    const-string v31, "达斡尔"

    const-string v32, "仫佬"

    const-string v33, "羌"

    const-string v34, "布朗"

    const-string v35, "撒拉"

    const-string v36, "毛南"

    const-string v37, "仡佬"

    const-string v38, "锡伯"

    const-string v39, "阿昌"

    const-string v40, "普米"

    const-string v41, "塔吉克"

    const-string v42, "怒"

    const-string v43, "乌孜别克"

    const-string v44, "俄罗斯"

    const-string v45, "鄂温克"

    const-string v46, "德昂"

    const-string v47, "保安"

    const-string v48, "裕固"

    const-string v49, "京"

    const-string v50, "塔塔尔"

    const-string v51, "独龙"

    const-string v52, "鄂伦春"

    const-string v53, "赫哲"

    const-string v54, "门巴"

    const-string v55, "珞巴"

    const-string v56, "基诺"

    .line 48
    filled-new-array/range {v0 .. v56}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->NATION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->cardType:I

    return-void
.end method

.method private decodeIdCardBaseInfo([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF16-LE"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 315
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setName(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 317
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->getSex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setSex(Ljava/lang/String;)V

    .line 318
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->cardType:I

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-ne v3, v0, :cond_3b

    .line 319
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->getNation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setNation(Ljava/lang/String;)V

    :cond_3b
    const/16 v0, 0x1a

    .line 321
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->getBirthDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setBirth(Ljava/lang/String;)V

    const/16 v1, 0x3d

    .line 322
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setAddress(Ljava/lang/String;)V

    const/16 v0, 0x4f

    .line 323
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setId(Ljava/lang/String;)V

    const/16 v1, 0x5e

    .line 324
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setDepart(Ljava/lang/String;)V

    const/16 v0, 0x6e

    .line 325
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->getValidityTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setValidityTime(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 326
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->cardType:I

    if-ne v1, v2, :cond_99

    const/16 v1, 0x77

    .line 328
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setPassNum(Ljava/lang/String;)V

    const/16 v0, 0x79

    .line 329
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setVisaTimes(Ljava/lang/String;)V

    const-string p1, "J"

    .line 330
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setLicType(Ljava/lang/String;)V

    goto :goto_a4

    :cond_99
    const/16 v0, 0x7c

    const/16 v1, 0x7d

    .line 333
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->setLicType(Ljava/lang/String;)V

    :goto_a4
    return-void
.end method

.method private getBirthDay(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "年"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    .line 237
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "月"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 238
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "日"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    const-string p1, ""

    return-object p1

    .line 225
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x61

    if-ne p1, v0, :cond_18

    const-string p1, "其他"

    return-object p1

    :cond_18
    const/16 v0, 0x62

    if-ne p1, v0, :cond_1f

    const-string p1, "外籍人士"

    return-object p1

    :cond_1f
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_26

    const-string p1, "穿青人族"

    return-object p1

    :cond_26
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_2d

    const-string p1, "摩梭人"

    return-object p1

    :cond_2d
    if-lez p1, :cond_38

    const/16 v0, 0x38

    if-gt p1, v0, :cond_38

    .line 231
    sget-object v0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->NATION_ARRAY:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_38
    const-string p1, ""

    return-object p1
.end method

.method private getSex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "1"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "男"

    return-object p1

    :cond_b
    const-string p1, "女"

    return-object p1
.end method

.method private getValidityTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "长期"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3c

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-长期"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 249
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 252
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    .line 253
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    .line 254
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isChinese(C)Z
    .registers 2

    .line 197
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 198
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_23

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_23

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_23

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_23

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_23

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_23

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private setAddress(Ljava/lang/String;)V
    .registers 7

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 131
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 134
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 140
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 142
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->address:Ljava/lang/String;

    goto :goto_25

    .line 146
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->address:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setBirth(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->birth:Ljava/lang/String;

    return-void
.end method

.method private setDepart(Ljava/lang/String;)V
    .registers 7

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 157
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 160
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 166
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 168
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->depart:Ljava/lang/String;

    goto :goto_25

    .line 172
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->depart:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->id:Ljava/lang/String;

    return-void
.end method

.method private setLicType(Ljava/lang/String;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->licType:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 7

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 88
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 91
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 97
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 99
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->name:Ljava/lang/String;

    goto :goto_25

    .line 103
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->name:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setNation(Ljava/lang/String;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->nation:Ljava/lang/String;

    return-void
.end method

.method private setPassNum(Ljava/lang/String;)V
    .registers 7

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 262
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 265
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 271
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 273
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->passNum:Ljava/lang/String;

    goto :goto_25

    .line 277
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->passNum:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setSex(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->sex:Ljava/lang/String;

    return-void
.end method

.method private setValidityTime(Ljava/lang/String;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->validityTime:Ljava/lang/String;

    return-void
.end method

.method private setVisaTimes(Ljava/lang/String;)V
    .registers 3

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    const/4 p1, 0x0

    .line 292
    iput p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->visaTimes:I

    return-void

    .line 295
    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->visaTimes:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBirth()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->birth:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()[B
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    return v0
.end method

.method public getDepart()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->depart:Ljava/lang/String;

    return-object v0
.end method

.method public getFpdata()[B
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fpdata:[B

    return-object v0
.end method

.method public getFplength()I
    .registers 2

    .line 361
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLicType()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->licType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNation()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->nation:Ljava/lang/String;

    return-object v0
.end method

.method public getPassNum()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->passNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()[B
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photo:[B

    return-object v0
.end method

.method public getPhotolength()I
    .registers 2

    .line 352
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    return v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityTime()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->validityTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVisaTimes()I
    .registers 2

    .line 300
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->visaTimes:I

    return v0
.end method

.method public setCardType(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->cardType:I

    return-void
.end method

.method public unPacket([BI)V
    .registers 8

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    .line 393
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    .line 394
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    const/4 v1, 0x4

    if-ge p2, v1, :cond_b

    return-void

    .line 399
    :cond_b
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    .line 400
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    const/4 v2, 0x2

    .line 401
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    .line 402
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    .line 403
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_39

    .line 405
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    .line 406
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    return-void

    .line 409
    :cond_39
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    if-lez p2, :cond_54

    .line 411
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    .line 412
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :try_start_4a
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    invoke-direct {p0, p2}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->decodeIdCardBaseInfo([B)V
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p2

    .line 416
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 419
    :cond_54
    :goto_54
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    if-lez p2, :cond_68

    .line 421
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photo:[B

    .line 422
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photo:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    return-void
.end method

.method public unPacketExt([BI)V
    .registers 8

    const/4 v0, 0x0

    .line 428
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    .line 429
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    .line 430
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    const/4 v1, 0x6

    if-ge p2, v1, :cond_b

    return-void

    .line 435
    :cond_b
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    .line 436
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    const/4 v2, 0x2

    .line 437
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    .line 438
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    const/4 v2, 0x4

    .line 439
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    .line 440
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    .line 441
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_4e

    .line 443
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    .line 444
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    .line 445
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    return-void

    .line 448
    :cond_4e
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    if-lez p2, :cond_69

    .line 450
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    .line 451
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    :try_start_5f
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->content:[B

    invoke-direct {p0, p2}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->decodeIdCardBaseInfo([B)V
    :try_end_64
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p2

    .line 455
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 458
    :cond_69
    :goto_69
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    if-lez p2, :cond_7d

    .line 460
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photo:[B

    .line 461
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photo:[B

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    :cond_7d
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    if-lez p2, :cond_94

    .line 465
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fpdata:[B

    .line 466
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->contentLength:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->photolength:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fpdata:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardInfo;->fplength:I

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_94
    return-void
.end method
