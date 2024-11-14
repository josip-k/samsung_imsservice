.class public Lcom/sec/internal/ims/core/GeolocationController;
.super Landroid/os/Handler;
.source "GeolocationController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IGeolocationController;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;,
        Lcom/sec/internal/ims/core/GeolocationController$IntentListener;
    }
.end annotation


# static fields
.field protected static final EVENT_EPDG_AVAILABLE:I = 0x5

.field protected static final EVENT_SERVICE_STATE_CHANGED:I = 0x4

.field protected static final EVENT_START_LOCATION_UPDATE:I = 0x1

.field protected static final EVENT_START_PERIODIC_LOCATION_UPDATE:I = 0x3

.field protected static final EVENT_STOP_LOCATION_UPDATE:I = 0x2

.field private static final INTENT_EPDG_SSID_CHANGED:Ljava/lang/String; = "com.sec.epdg.EPDG_SSID_CHANGED"

.field private static final INTENT_PERIODIC_LOCATION_UPDATE_TIMER_EXPD:Ljava/lang/String; = "com.sec.internal.ims.imsservice.periodic_lu"

.field private static final INTENT_PROVIDERS_CHANGED:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final LOCATION_REQUEST_TIMEOUT:I = 0xafc8

.field private static final LOG_TAG:Ljava/lang/String; = "GeolocationCon"

.field private static final PERIODIC_LOCATION_TIME:I = 0x1b7740


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field protected mCountryIso:Ljava/lang/String;

.field private mDataRegState:[I

.field mDtLocUserConsentObserver:Landroid/database/ContentObserver;

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

.field private mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

.field private mHasToRestoreLocationSetting:Z

.field private final mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

.field protected mIsEpdgAvaialble:[Z

.field private mIsForceEpdgAvailUpdate:[Z

.field private mIsLocationEnabled:Z

.field private mIsLocationEnabledToRestore:Z

.field private mIsLocationUserConsent:[I

.field private mIsRequested:Z

.field mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateHandler:Landroid/os/Handler;

.field private mPhoneId:I

.field private final mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mVoiceRegState:[I


# direct methods
.method public static synthetic $r8$lambda$Cm5tYuutBXomQiXFRTQF8pxhgXs(Landroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/GeolocationController;->lambda$onServiceStateChanged$1(Landroid/content/SharedPreferences;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S0LV3hAJWXINB-fhfQ-MMXYSurU(Lcom/sec/internal/ims/core/GeolocationController;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->lambda$isNeedRequestLocation$3(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XDUPgMLOX5sM223HdaYdqROzf54(Lcom/sec/internal/ims/core/GeolocationController;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->lambda$handleMessage$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRyq7y6fzQIp9sFbOpMQ89wkBz0(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->lambda$storeLastAccessedCountry$2(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsForceEpdgAvailUpdate(Lcom/sec/internal/ims/core/GeolocationController;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLocationEnabled(Lcom/sec/internal/ims/core/GeolocationController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLocationUserConsent(Lcom/sec/internal/ims/core/GeolocationController;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/GeolocationController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/sec/internal/ims/core/GeolocationController;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsLocationEnabled(Lcom/sec/internal/ims/core/GeolocationController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLocationEnabledToRestore(Lcom/sec/internal/ims/core/GeolocationController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misNeedRequestLocation(Lcom/sec/internal/ims/core/GeolocationController;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->isNeedRequestLocation(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monNetworkCountryIsoChanged(Lcom/sec/internal/ims/core/GeolocationController;ILcom/sec/internal/constants/Mno;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/GeolocationController;->onNetworkCountryIsoChanged(ILcom/sec/internal/constants/Mno;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPeriodicLocationUpdate(Lcom/sec/internal/ims/core/GeolocationController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->startPeriodicLocationUpdate(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V
    .locals 2

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 92
    iput-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    .line 101
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    .line 103
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mHasToRestoreLocationSetting:Z

    .line 107
    iput v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    .line 885
    new-instance v1, Lcom/sec/internal/ims/core/GeolocationController$1;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/core/GeolocationController$1;-><init>(Lcom/sec/internal/ims/core/GeolocationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDtLocUserConsentObserver:Landroid/database/ContentObserver;

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 116
    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v1

    .line 117
    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 119
    new-array p3, v1, [I

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    const-string p3, "location"

    .line 120
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    .line 121
    new-instance p3, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    invoke-direct {p3, p0, p2}, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    const-string p3, "alarm"

    .line 122
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 124
    new-array p3, v1, [I

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    .line 125
    new-array p3, v1, [Z

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    .line 126
    new-array p3, v1, [I

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    .line 127
    new-array p3, v1, [Z

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    .line 128
    iget-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    const/4 v1, 0x1

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 129
    iget-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 130
    iget-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 131
    iget-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    const/4 v1, -0x1

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 132
    iget-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 134
    new-instance p3, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-direct {p3, p0, p2}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$IntentListener-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    .line 137
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->registerDtLocUserConsentObserver()V

    .line 138
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->setDtLocUserConsent()V

    .line 140
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "GeolocationCon"

    const/16 v0, 0x14

    invoke-direct {p2, p1, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private getProvider(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .line 479
    iget p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 481
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    const-string p0, "Hybrid_A-GPS"

    goto :goto_0

    .line 483
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    const-string p0, "DBH"

    goto :goto_0

    :cond_1
    const-string p0, "DHCP"

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "gps"

    .line 487
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "GPS"

    goto :goto_0

    :cond_3
    const-string v0, "fused"

    .line 489
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "FUSED"

    .line 495
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getProvider="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeolocationCon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .line 631
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.internal.ims.imsservice.periodic_lu"

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "phoneId"

    .line 633
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 v1, 0x2000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isNeedRequestLocation(II)Z
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/GeolocationController;I)V

    .line 927
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    if-nez p0, :cond_0

    const-string p0, "GeolocationCon"

    const-string/jumbo p1, "profile is null"

    .line 929
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$handleMessage$0(IZ)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->requestLocationUpdate(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    return-void
.end method

.method private synthetic lambda$isNeedRequestLocation$3(ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 927
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/GeolocationController;->matchTimingReqLocation(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onServiceStateChanged$1(Landroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 3

    const-string/jumbo v0, "timestamp"

    const-wide/16 v1, 0x0

    .line 788
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$storeLastAccessedCountry$2(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 825
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string/jumbo v2, "timestamp"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "cc"

    .line 826
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private msgToString(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    .line 693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EPDG_AVAILABLE"

    return-object p0

    :cond_1
    const-string p0, "SERVICE_STATE_CHANGED"

    return-object p0

    :cond_2
    const-string p0, "START_PERIODIC_LOCATION_UPDATE"

    return-object p0

    :cond_3
    const-string p0, "STOP_LOCATION_UPDATE"

    return-object p0

    :cond_4
    const-string p0, "START_LOCATION_UPDATE"

    return-object p0
.end method

.method private onNetworkCountryIsoChanged(ILcom/sec/internal/constants/Mno;Ljava/lang/String;)V
    .locals 2

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkCountryIsoChanged: mCountryIso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 809
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 811
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/GeolocationController;->storeLastAccessedCountry(ILjava/lang/String;)V

    .line 814
    :cond_0
    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    .line 815
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 816
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocation(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private registerDtLocUserConsentObserver()V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.ims.settings/dtlocuserconsent"

    .line 873
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDtLocUserConsentObserver:Landroid/database/ContentObserver;

    .line 872
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseLocationUpdate()V
    .locals 3

    const-string v0, "GeolocationCon"

    const-string/jumbo v1, "releaseLocationUpdate"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 263
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->restoreLocationSettings()V

    return-void

    .line 265
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->restoreLocationSettings()V

    .line 267
    throw v1
.end method

.method private setDtLocUserConsent()V
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-string v1, "dtlocuserconsent"

    const-string v2, "dtlocation"

    const/4 v3, -0x1

    invoke-static {v3, v0, v1, v2, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDtLocUserConsent- dtlocuserconsent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeolocationCon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 880
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 881
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startPeriodicLocationUpdate(I)V
    .locals 5

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPeriodicLocationUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), mIsEpdgAvaialble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    add-long/2addr v1, v3

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x3

    .line 643
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private storeLastAccessedCountry(ILjava/lang/String;)V
    .locals 2

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-string v0, "last_accessed_country_iso"

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 824
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 913
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method enableLocationSettings()V
    .locals 2

    .line 546
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->isLocationServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    const/4 v0, 0x1

    .line 549
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->setLocationServiceEnabled(Z)V

    .line 550
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mHasToRestoreLocationSetting:Z

    .line 551
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->isLocationServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLocationSettings : restore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GeolocationCon"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    return-object p0
.end method

.method public getLastAccessedNetworkCountryIso(I)Ljava/lang/String;
    .locals 7

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GeolocationCon"

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastAccessedNetworkCountryIso: networkCountryIso: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    return-object p0

    .line 616
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-string v0, "last_accessed_country_iso"

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_1

    const-string p0, "getLastAccessedNetworkCountryIso: Not accessed yet"

    .line 619
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_1
    const-string v2, "cc"

    .line 623
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastAccessedNetworkCountryIso: last accessed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    const-string/jumbo v4, "timestamp"

    const-wide/16 v5, 0x0

    .line 625
    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 624
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method getLastKnownLocation()Landroid/location/Location;
    .locals 3

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "fused"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 378
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 380
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 385
    :try_start_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 387
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const-string p0, "can not find lastKnownLocation"

    goto :goto_3

    .line 391
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastKnownLocation from "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    const-string v1, "GeolocationCon"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected getListener()Landroid/location/LocationListener;
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    return-object p0
.end method

.method getLocationFromLastKnown(I)Z
    .locals 0

    .line 527
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->enableLocationSettings()V

    .line 528
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocationFromLastKnown(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->restoreLocationSettings()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getNetworkCountryIso(I)Ljava/lang/String;
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-static {p0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->-$$Nest$fgetmReceiver(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/GeolocationController;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->onEpdgAvailable(IZ)V

    goto :goto_0

    .line 180
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->onServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V

    goto :goto_0

    .line 176
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->startPeriodicLocationUpdate(I)V

    goto :goto_0

    .line 171
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->releaseLocationUpdate()V

    .line 172
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    if-eqz v0, :cond_6

    const-string p0, "Already Requested, Don\'t request location"

    .line 159
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 162
    iput v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    .line 163
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_7

    move v2, v3

    .line 164
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/GeolocationController;IZ)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 2

    const-string v0, "initializing sequentially..."

    const-string v1, "GeolocationCon"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->-$$Nest$minit(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public isCountryCodeLoaded(I)Z
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 591
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 592
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 593
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 594
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocationInfo(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GeolocationCon"

    const-string v0, "isCountryCodeLoaded : location expired, return false"

    .line 595
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 596
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const-string p1, ""

    .line 597
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    return v1

    .line 599
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    .line 600
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 604
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    return v1
.end method

.method public isLocationServiceEnabled()Z
    .locals 2

    .line 567
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocationServiceEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method isValidLocation(ILandroid/location/Location;)Z
    .locals 13

    const-string v0, "GeolocationCon"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p0, "isValidLocation : location is null"

    .line 315
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 317
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "isValidLocation : location from Mock Provider"

    .line 319
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    .line 320
    iput-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    const/4 p2, 0x0

    .line 323
    iput-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 p2, 0x29

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return v1

    .line 329
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 330
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 333
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v6, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-virtual {p0, p1, v6}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getValidLocationTime()I

    move-result v6

    .line 336
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getValidLocationAccuracy()I

    move-result v7

    .line 337
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getConfidenceLevel()I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v1

    move v6, p0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-lez v6, :cond_4

    sub-long v9, v2, v4

    int-to-long v11, v6

    cmp-long v9, v9, v11

    if-gtz v9, :cond_3

    goto :goto_1

    :cond_3
    move v8, v1

    .line 342
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidLocation(location) ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms): "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "(Current: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") (Loc. Info received: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "from provider ["

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-lez v7, :cond_6

    .line 348
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    const/16 v2, 0x5a

    if-ne p0, v2, :cond_5

    const p0, 0x3fd33333    # 1.65f

    mul-float/2addr p2, p0

    .line 354
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 355
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_6

    const/high16 p0, 0x447a0000    # 1000.0f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_6

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isValidLocation(loc) : acc not valid - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    return v8
.end method

.method isValidLocationInfo(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string v2, "geolocation null"

    :goto_0
    move v3, v0

    goto :goto_1

    .line 276
    :cond_0
    iget-object v2, p2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mLocationTime is empty"

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mCountry  is empty"

    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mLatitude  is empty"

    goto :goto_0

    .line 285
    :cond_3
    iget-object v2, p2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "mA1  is empty"

    goto :goto_0

    :cond_4
    const-string v2, ""

    move v3, v1

    :goto_1
    const-string v4, "GeolocationCon"

    if-nez v3, :cond_5

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isValidLocation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 295
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 296
    iget-object p2, p2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 300
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getValidLocationTime()I

    move-result p0

    goto :goto_2

    :cond_6
    move p0, v0

    :goto_2
    if-lez p0, :cond_8

    sub-long p1, v5, v7

    int-to-long v2, p0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_7

    move v0, v1

    .line 305
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isValidLocation(mGeolocation) ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ms): "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "(Current: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") (Loc. Info received: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :cond_8
    return v3
.end method

.method protected matchTimingReqLocation(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 1

    .line 917
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRequestLocationTiming()I

    move-result p0

    .line 918
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchTimingReqLocation ,match="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timing="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeolocationCon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyEpdgAvailable(II)V
    .locals 1

    const/4 v0, 0x5

    .line 831
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 751
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgAvailable(IZ)V
    .locals 4

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEpdgAvailable : phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prevEpdgState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " curEpdgState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsForceEpdgAvailUpdate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 839
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOBILE_NED:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    .line 840
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    if-ne p2, v1, :cond_0

    return-void

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aput-boolean p2, v1, p1

    const/4 p2, 0x2

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->isNeedRequestLocation(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 846
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 847
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_1

    return-void

    .line 851
    :cond_1
    invoke-virtual {p0, p2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 853
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/core/GeolocationController;->isNeedRequestLocation(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 854
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 859
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/core/GeolocationController;->isNeedRequestLocation(II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 860
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->stopPeriodicLocationUpdate(I)V

    .line 863
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget p1, p2, p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 864
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    :cond_3
    :goto_0
    return-void
.end method

.method onServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V
    .locals 7

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 757
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "ignore phone state listener"

    .line 759
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x4

    .line 763
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/core/GeolocationController;->isNeedRequestLocation(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v2, v2, p1

    if-nez v2, :cond_1

    .line 765
    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 767
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    .line 766
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 768
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_2

    .line 769
    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v2

    if-nez v2, :cond_2

    .line 770
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->stopPeriodicLocationUpdate(I)V

    .line 774
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v3

    aput v3, v2, p1

    .line 775
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result p2

    aput p2, v2, p1

    .line 777
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget p2, p2, p1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    aget p2, p2, p1

    if-nez p2, :cond_3

    goto/16 :goto_1

    .line 786
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-string v0, "last_accessed_country_iso"

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda4;-><init>()V

    .line 788
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    const-wide/16 v3, 0x0

    .line 789
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p2, v5, v3

    const-string v0, ""

    if-nez p2, :cond_4

    const-string p2, "getLastAccessedNetworkCountryIso: Not accessed yet"

    .line 791
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 792
    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    return-void

    .line 796
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastAccessedNetworkCountryIso: last accessed: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda5;-><init>()V

    .line 799
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 800
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    int-to-long p1, p1

    cmp-long p1, v1, p1

    if-lez p1, :cond_7

    .line 802
    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    goto :goto_2

    .line 779
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    if-gez p2, :cond_6

    .line 781
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid subId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 784
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/GeolocationController;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/GeolocationController;->onNetworkCountryIsoChanged(ILcom/sec/internal/constants/Mno;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method requestLocationToLocationManager(Z)Z
    .locals 4

    .line 236
    :try_start_0
    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    const/16 v0, 0x64

    .line 239
    invoke-virtual {p1, v0}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "fused"

    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    const/4 p1, 0x2

    .line 244
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method requestLocationUpdate(IZ)Z
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocationUpdate : isEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getLocationFromLastKnown(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 230
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/GeolocationController;->requestLocationToLocationManager(Z)Z

    move-result p0

    return p0
.end method

.method restoreLocationSettings()V
    .locals 2

    .line 557
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mHasToRestoreLocationSetting:Z

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreLocationSettings : restore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->setLocationServiceEnabled(Z)V

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mHasToRestoreLocationSetting:Z

    .line 561
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->isLocationServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    :cond_0
    return-void
.end method

.method protected setLocationServiceEnabled(Z)V
    .locals 1

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public startGeolocationUpdate(IZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/GeolocationController;->startGeolocationUpdate(IZI)Z

    move-result p0

    return p0
.end method

.method public startGeolocationUpdate(IZI)Z
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGeoLocationUpdate isEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocationInfo(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return v0
.end method

.method public stopGeolocationUpdate()V
    .locals 2

    const-string v0, "GeolocationCon"

    const-string/jumbo v1, "stopGeolocationUpdate"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 255
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopPeriodicLocationUpdate(I)V
    .locals 2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopPeriodicLocationUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 651
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/GeolocationController;->isNeedRequestLocation(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method updateGeolocation(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->getProvider(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v0

    const-string v1, "GeolocationCon"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateGeolocation(iso) : geolocation is null. Don\'t update and maintain previous one"

    .line 400
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p0, "updateGeolocation(iso) : iso is same as before. Don\'t update and maintain previous one"

    .line 404
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    :cond_1
    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateGeolocation(iso) : mGeolocation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/gls/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTeliaCo()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    filled-new-array {p2, v0, v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 412
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    :goto_1
    return-void
.end method

.method updateGeolocation(Landroid/location/Location;)V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getConfidenceLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x44

    :goto_0
    const-string v1, "GeolocationCon"

    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "ignore mock location"

    .line 434
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getProvider(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object p1

    goto/16 :goto_2

    .line 441
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getProvider(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v3, v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Landroid/location/Location;Ljava/lang/String;Landroid/content/Context;I)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 443
    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_2

    .line 446
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 449
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGeolocation :  latitude = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", longitude = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    .line 450
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geolocation is not null!, mCountryIso="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", geo mCountry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v0, "geolocation is null!"

    .line 461
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez p1, :cond_8

    const-string/jumbo p0, "updateGeolocation(loc) : geolocation is null. Don\'t update and maintain previous one"

    .line 466
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 468
    :cond_8
    iget v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mPhoneId:I

    iget-object v2, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->storeLastAccessedCountry(ILjava/lang/String;)V

    .line 470
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateGeolocation(loc) : mGeolocation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/gls/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    :goto_3
    return-void
.end method

.method public updateGeolocationFromLastKnown(I)Z
    .locals 4

    const-string v0, "GeolocationCon"

    const-string/jumbo v1, "updateGeolocationFromLastKnown"

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 503
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocation(ILandroid/location/Location;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x30000033

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocation(Landroid/location/Location;)V

    return v2

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocationInfo(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000034

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 509
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    return v2

    :cond_1
    return v1
.end method
