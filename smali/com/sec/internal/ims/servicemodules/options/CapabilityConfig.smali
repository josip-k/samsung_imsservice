.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
.super Ljava/lang/Object;
.source "CapabilityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityConfig"


# instance fields
.field private isVzwCapabilitypolicy:Z

.field private mAllowedPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mCapCacheExpiry:I

.field private mCapDiscCommonStack:Z

.field private mCapInfoExpiry:I

.field private mContext:Landroid/content/Context;

.field private mDefaultDisableInitialScan:Z

.field private mDefaultDisc:I

.field private mDisableInitialScan:Z

.field private mForceDisableInitialScan:Z

.field protected mIsAvailable:Z

.field protected mIsLocalConfigUsed:Z

.field private mIsPollingPeriodUpdated:Z

.field private mIsRcsUpProfile:Z

.field protected mLastSeenActive:Z

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mMsgcapvalidity:I

.field private mNonRCScapInfoExpiry:I

.field private mPhoneId:I

.field private mPollListSubExpiry:I

.field private mPollingPeriod:I

.field private mPollingRate:I

.field private mPollingRatePeriod:J

.field private mRcsProfile:Ljava/lang/String;

.field private mServiceAvailabilityInfoExpiry:I

.field protected mServiceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 46
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    const/16 v1, 0xa

    .line 48
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    const-wide/16 v1, 0xa

    .line 49
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 50
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    const/4 v1, 0x3

    .line 51
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    const/16 v1, 0x3c

    .line 52
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 53
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    const v2, 0x76a700

    .line 54
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 55
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    const/16 v1, 0x1e

    .line 56
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    .line 57
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisableInitialScan:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mForceDisableInitialScan:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    .line 68
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    .line 71
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 75
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;)V
    .locals 3

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 46
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    const/16 v1, 0xa

    .line 48
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    const-wide/16 v1, 0xa

    .line 49
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 50
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    const/4 v1, 0x3

    .line 51
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    const/16 v1, 0x3c

    .line 52
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 53
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    const v2, 0x76a700

    .line 54
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 55
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    const/16 v1, 0x1e

    .line 56
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    .line 57
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisableInitialScan:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mForceDisableInitialScan:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    .line 68
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    .line 71
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    .line 441
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capInfoExpiry:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 442
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capCacheExpiry:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 443
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingPeriod:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    .line 444
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRate:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    .line 445
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRatePeriod:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 446
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->defaultDisc:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 447
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 448
    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isLastseenAvailable:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    return-void
.end method

.method private notifyDefaultDiscChange()V
    .locals 3

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "root/application/1/capdiscovery/defaultdisc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parameter/defaultdisc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateCapDiscoveryAllowedPrefixes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 409
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCapDiscoveryAllowedPrefixes: allowedPrefixes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityConfig"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "!"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 414
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 416
    :catch_0
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCapDiscoveryAllowedPrefixes: patternSyntaxException on prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 420
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\+"

    const-string v4, "\\\\+"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCapAllowedPrefixes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    return-object p0
.end method

.method public getCapCacheExpiry()J
    .locals 2

    .line 246
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getCapInfoExpiry()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    return p0
.end method

.method public getDefaultDisc()I
    .locals 0

    .line 314
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    return p0
.end method

.method getDefaultDisc(I)I
    .locals 1

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    const-string v0, "defaultdisc"

    .line 327
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 326
    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMsgcapvalidity()J
    .locals 2

    .line 270
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getNonRCScapInfoExpiry()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    return p0
.end method

.method public getPollListSubExpiry()I
    .locals 0

    .line 258
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    return p0
.end method

.method public getPollingPeriod()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    return p0
.end method

.method public getPollingRate()I
    .locals 0

    .line 262
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    return p0
.end method

.method public getPollingRatePeriod()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    return-wide v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceAvailabilityInfoExpiry()I
    .locals 0

    .line 310
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 294
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    return p0
.end method

.method public isDisableInitialScan()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    return p0
.end method

.method public isLastSeenActive()Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    return p0
.end method

.method public isPollingPeriodUpdated()Z
    .locals 0

    .line 274
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    return p0
.end method

.method public load()V
    .locals 14

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    const-string v1, "CapabilityConfig"

    if-nez v0, :cond_0

    .line 83
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v0, "load: registrationManager is null"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 87
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    .line 88
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    sget-object v4, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v5, "presence"

    .line 90
    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "options"

    .line 92
    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    iput v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    .line 96
    :cond_2
    :goto_0
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    if-nez v5, :cond_3

    .line 97
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v0, "load: mServiceType is zero"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 105
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "root/*"

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 106
    invoke-static {v5, v6, v7}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;

    move-result-object v5

    if-nez v5, :cond_4

    .line 108
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v0, "load: configData is not found"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 113
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v6, v7, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    .line 114
    invoke-static {v6}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    .line 116
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 117
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isLocalConfigUsed()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    .line 119
    iget v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v7, "version"

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "defaultdisc"

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 125
    invoke-virtual {v5, v8, v9}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 128
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->notifyDefaultDiscChange()V

    if-lez v7, :cond_7

    .line 130
    iget v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    if-ne v8, v3, :cond_6

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    if-eqz v3, :cond_7

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 133
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "capDiscCommonStack"

    .line 132
    invoke-virtual {v5, v8, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    .line 136
    iget v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string/jumbo v9, "rcs_default_disable_initial_scan"

    invoke-static {v8, v9, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisableInitialScan:Z

    const-string v9, "disableInitialAddressBookScan"

    .line 137
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    .line 139
    iget v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string/jumbo v9, "rcs_force_disable_initial_scan"

    invoke-static {v8, v9, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mForceDisableInitialScan:Z

    if-eqz v8, :cond_8

    goto :goto_3

    .line 140
    :cond_8
    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    :goto_3
    iput-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    const-string/jumbo v8, "pollingrate"

    const/16 v9, 0xa

    .line 143
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 142
    invoke-virtual {v5, v8, v10}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    const-string/jumbo v8, "pollingrateperiod"

    .line 146
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 145
    invoke-virtual {v5, v8, v10}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v10, v8

    iput-wide v10, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    iget v10, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    if-nez v10, :cond_9

    iget-wide v10, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_9

    .line 153
    iput v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    const-wide/16 v9, 0x3

    .line 154
    iput-wide v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    const-string v9, "load: change mPollingRate to "

    .line 155
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and change mPollingRatePeriod to "

    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    :cond_9
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v10, :cond_a

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    move v4, v2

    :goto_4
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v4, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    const v4, 0x98968

    :goto_5
    const-string/jumbo v9, "pollingperiod"

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 161
    invoke-virtual {v5, v9, v10}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 163
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCapPollInterval()I

    move-result v10

    invoke-virtual {p0, v4, v10, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->updatePollingPeriod(III)V

    .line 165
    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    const/16 v9, 0x3c

    if-nez v4, :cond_c

    move v4, v9

    goto :goto_6

    :cond_c
    const v4, 0x278d00

    .line 166
    :goto_6
    iget-boolean v10, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    if-nez v10, :cond_d

    const v4, 0x93a80

    :cond_d
    const-string v10, "capinfoexpiry"

    .line 170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 169
    invoke-virtual {v5, v10, v11}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 171
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getAvailCacheExpiry()I

    move-result v0

    invoke-virtual {p0, v4, v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->updateCapInfoExpiry(III)V

    .line 173
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "nonRCScapInfoExpiry"

    .line 173
    invoke-virtual {v5, v4, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    const-string v0, "capdiscoveryallowedprefixes"

    .line 176
    invoke-virtual {v5, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->updateCapDiscoveryAllowedPrefixes(Ljava/util/List;)V

    const-string/jumbo v0, "serviceAvailabilityInfoExpiry"

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 181
    invoke-virtual {v5, v0, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    .line 185
    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    const/16 v9, 0x1e

    const-string v10, "msgcapvalidity"

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    if-eqz v4, :cond_e

    goto :goto_7

    .line 190
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    invoke-virtual {v5, v10, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    goto :goto_8

    .line 187
    :cond_f
    :goto_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    invoke-virtual {v5, v10, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    :goto_8
    const-string v0, "lastseenactive"

    .line 193
    invoke-virtual {v5, v0, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 197
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v0, :cond_10

    move v9, v2

    .line 198
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v5, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    .line 198
    invoke-static {v0, v5, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    if-eqz v6, :cond_13

    .line 202
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_9

    :cond_11
    const v0, 0x76a700

    :goto_9
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    const-string/jumbo v0, "use_capcache_expiry"

    .line 203
    invoke-interface {v6, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "omadm/./3GPP_IMS/CAP_CACHE_EXP"

    if-eqz v0, :cond_12

    .line 204
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v4, v3, v2, v5}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    goto :goto_a

    .line 207
    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v0, v3, v2, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 210
    :goto_a
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateCapDiscoveryOption()V

    :cond_13
    const-string v0, " load: mServiceType: "

    .line 213
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mRcsProfile: "

    .line 214
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mIsRcsUpProfile: "

    .line 215
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsLocalConfigUsed: "

    .line 216
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " rcsVersion: "

    .line 217
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDefaultDisc: "

    .line 218
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsAvailable: "

    .line 219
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mCapDiscCommonStack: "

    .line 220
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mDisableInitialScan: "

    .line 221
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mDefaultDisableInitialScan: "

    .line 222
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisableInitialScan:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mForceDisableInitialScan: "

    .line 223
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mForceDisableInitialScan:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mPollingRate: "

    .line 224
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPollingRatePeriod: "

    .line 225
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mNonRCScapInfoExpiry: "

    .line 226
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMsgcapvalidity: "

    .line 227
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mServiceAvailabilityInfoExpiry: "

    .line 228
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLastSeenActive: "

    .line 229
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mPollListSubExpiry: "

    .line 230
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCapCacheExpiry: "

    .line 231
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public resetPollingPeriodUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    return-void
.end method

.method public setUsePresence(Z)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilityConfig [mContext="

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneId="

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCapInfoExpiry="

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNonRCScapInfoExpiry="

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPollingPeriod="

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCapCacheExpiry="

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPollingRate="

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPollListSubExpiry="

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPollingRatePeriod="

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceAvailabilityInfoExpiry="

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultDisc="

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLocalConfigUsed="

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPollingPeriodUpdated="

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableInitialScan="

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultDisableInitialScan="

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisableInitialScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mForceDisableInitialScan="

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mForceDisableInitialScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowedPrefixes="

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCapDiscCommonStack="

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateCapInfoExpiry(III)V
    .locals 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCapInfoExpiry() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    if-eqz v1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    const/16 p2, 0x3c

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v2, "omadm/./3GPP_IMS/AVAIL_CACHE_EXP"

    .line 374
    invoke-static {p1, v2, p3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p3, ", availCacheExpFromDM: "

    .line 376
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p1, :cond_0

    .line 378
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    .line 380
    :cond_0
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    .line 382
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-lez p2, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_2

    const-string p1, ", profileCapInfoExpiry: "

    .line 383
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    :cond_2
    const-string p2, ", capInfoExpiryFromConfigDB: "

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p3, :cond_3

    const-string p1, ", use capInfoExpiryFromConfigDB: "

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    .line 390
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, ", change capInfoExpiryFromConfigDB to "

    .line 394
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for eur"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    .line 397
    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez p2, :cond_5

    .line 398
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    :cond_5
    const-string p2, ", use defaultCapInfoExpiry"

    .line 400
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    :goto_0
    const-string p1, ", mCapInfoExpiry: "

    .line 404
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapabilityConfig"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method updatePollingPeriod(III)V
    .locals 5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updatePollingPeriod() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 341
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v4, "omadm/./3GPP_IMS/CAP_POLL_INTERVAL"

    .line 341
    invoke-static {p2, v4, p3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, ", capPollIntervalFromDM: "

    .line 343
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p2, :cond_1

    .line 345
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 346
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_5

    .line 348
    :cond_1
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 349
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_5

    .line 351
    :cond_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    if-lez p2, :cond_5

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_5

    const-string p1, ", capPollIntervalFromProfile: "

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 354
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_5

    :cond_5
    const-string p2, ", pollingPeriodFromConfigDB: "

    .line 356
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ltz p3, :cond_7

    .line 358
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq p1, p3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 359
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_5

    .line 361
    :cond_7
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq p2, p1, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 362
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    :goto_5
    const-string p1, ", mPollingPeriod: "

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsPollingPeriodUpdated: "

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapabilityConfig"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public usePresence()Z
    .locals 1

    .line 286
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
