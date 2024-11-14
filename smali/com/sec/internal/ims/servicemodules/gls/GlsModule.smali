.class public Lcom/sec/internal/ims/servicemodules/gls/GlsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "GlsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;


# static fields
.field private static final AUTO_ACCEPT_FT_GLS:I = 0x0

.field private static final AUTO_SEND_FT_GLS:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mPushEnabled:[Z

.field private final mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

.field private phoneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 81
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    .line 108
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    .line 110
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 111
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 114
    new-instance v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-direct {v0, p2, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/gls/GlsModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    .line 116
    :goto_0
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    if-ge p1, p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p2

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    .line 422
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 423
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "\'"

    const-string v1, "&apos;"

    .line 424
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    .line 427
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    goto :goto_0

    .line 428
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 426
    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p1

    .line 429
    new-instance p2, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p3, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;->compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;I)Ljava/lang/String;

    move-result-object p1

    .line 430
    sget-object p2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateGeoSms: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " by limit: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    .line 411
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 412
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "\'"

    const-string v1, "&apos;"

    .line 413
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 415
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    goto :goto_0

    .line 416
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 414
    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 417
    new-instance p1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateXML(Ljava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GeoLocation;)Ljava/lang/String;
    .locals 3

    .line 400
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 401
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 402
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 403
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    iget v1, v1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mRadius:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    const-string/jumbo v1, "sip:anonymous@anonymous.invalid"

    .line 405
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 407
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mLabel:Ljava/lang/String;

    invoke-static {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isPushServiceAvailable()Z
    .locals 1

    .line 435
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable(I)Z

    move-result p0

    return p0
.end method

.method private isPushServiceAvailable(I)Z
    .locals 2

    .line 439
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    .line 442
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsRegistration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPushEnabled: true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 446
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "geolocation push is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .locals 9

    .line 393
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 394
    new-instance v7, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-direct {v7, v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;-><init>(Ljava/util/Date;)V

    .line 395
    new-instance v8, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V

    return-object v8
.end method

.method private save2FileSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 381
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 385
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/FileUtils;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p1, v1

    .line 374
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_0

    .line 379
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v1

    :catch_5
    move-exception p0

    move-object p1, v1

    .line 371
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    .line 379
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_5
    if-eqz v1, :cond_2

    .line 379
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 381
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 384
    :cond_2
    :goto_6
    throw p0

    :cond_3
    return-object v1
.end method

.method private updateFeatures(I)V
    .locals 5

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 548
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFeatures: RCS is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    aput-boolean v1, p0, p1

    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    const-string v3, "geolocPushAuth"

    .line 553
    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 552
    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, p1

    .line 554
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures mPushEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    aget-boolean p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_1
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    if-ge v1, p1, :cond_2

    .line 557
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p1

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onAcceptLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public cancelLocationShare(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCancelLocationShareInCallResponse(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V

    return-void

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 282
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createInCallLocationShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 284
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    move-object/from16 v9, p6

    invoke-virtual {v0, v2, v2, v9, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCreateInCallLocationShareResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    move-object/from16 v9, p6

    const-string v1, "0"

    move-object/from16 v7, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 289
    invoke-static {v1, v7, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-direct {v0, v5, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->save2FileSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 293
    new-instance v3, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_2

    if-nez p8, :cond_1

    .line 296
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 297
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v10, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v11, p7

    move-object v15, v1

    invoke-interface/range {v3 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 300
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object v9, v0

    move-object v14, v1

    invoke-interface/range {v3 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method public deleteGeolocSharings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 346
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onDeleteAllLocationShareResponse(ZLjava/util/List;)V

    return-void

    .line 350
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 189
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 195
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhoneIdByChatId(Ljava/lang/String;)I
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPhoneIdByImdnId(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)I
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getPhoneIdByImdnId(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)I

    move-result p0

    return p0
.end method

.method public getPhoneIdByMessageId(I)I
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getPhoneIdByMessageId(I)I

    move-result p0

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    const-string p0, "im"

    const-string v0, "gls"

    .line 142
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 100
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->startLocationShareInCall(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 95
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 3

    .line 168
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateFeatures(I)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 159
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onIncomingTransferUndecided(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onIncomingLoactionShareInCall(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 489
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "auto_accept_gls"

    .line 490
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onOutgoingTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 482
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCreateInCallLocationShareResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 484
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2

    .line 124
    sget-object p2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceSwitched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateFeatures(I)V

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 471
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 473
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 474
    instance-of v0, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 460
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 462
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 463
    instance-of v0, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    return-void
.end method

.method public registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method public rejectLocationShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onRejectLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 213
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareLocationInChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    move/from16 v1, p1

    if-ne v1, v0, :cond_0

    .line 215
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 218
    :goto_0
    invoke-direct {v6, v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    move-object/from16 v9, p6

    invoke-virtual {v0, v7, v9, v8, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8

    :cond_1
    move-object/from16 v9, p6

    .line 223
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 224
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v0

    .line 225
    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    if-nez p9, :cond_9

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v10

    .line 229
    sget-object v11, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v12, p8

    invoke-interface {v10, v12, v11, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v10

    .line 231
    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_2

    .line 233
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 234
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, p10

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v10, :cond_3

    .line 239
    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v10, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    .line 240
    :cond_4
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 241
    invoke-static {v7, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v4, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, p10

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    .line 246
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "jibe"

    .line 247
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v10, :cond_8

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    .line 248
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 249
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, p10

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 256
    :cond_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v10

    .line 257
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object v6, v10

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-object v8

    :cond_9
    if-eqz v1, :cond_a

    .line 260
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 261
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 262
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 263
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 267
    :cond_a
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 268
    invoke-static {v7, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v4, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shareLocationInChat(Ljava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 205
    invoke-virtual/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 131
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLocationShareInCall(Ljava/lang/String;)V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onStartLocationShareInCallResponse(Ljava/lang/String;Z)V

    return-void

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendFile(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 137
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5

    .line 497
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 498
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already has ext info, no need update!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 502
    :cond_0
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p0, :cond_1

    .line 503
    move-object p0, p1

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 504
    :cond_1
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 506
    move-object p0, p1

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "UTF-8"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 512
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 517
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 521
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    move-exception p0

    .line 515
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_2

    .line 526
    :catch_4
    :cond_3
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :goto_5
    if-eqz v0, :cond_4

    .line 521
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 525
    :catch_5
    :cond_4
    throw p0

    :cond_5
    move-object p0, v0

    .line 529
    :goto_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 530
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Error!!! no gls data in message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML BODY IS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 536
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 538
    :cond_7
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 540
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THE EXTINFO IS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateExtInfo(Ljava/lang/String;)V

    return-void
.end method
