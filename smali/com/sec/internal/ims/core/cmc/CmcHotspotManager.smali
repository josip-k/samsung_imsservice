.class public Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;
.super Ljava/lang/Object;
.source "CmcHotspotManager.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

.field private final mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLastHotspotEnabledFromReceiver:Z


# direct methods
.method public static synthetic $r8$lambda$HquJ2jwIBm5wdsoYfDaY5BFRS58(Ljava/net/NetworkInterface;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->lambda$getHotspotNetworkInterface$0(Ljava/net/NetworkInterface;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastHotspotEnabledFromReceiver(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mLastHotspotEnabledFromReceiver:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyHotspotStateChange(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->notifyHotspotStateChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLastHotspotState(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->setLastHotspotState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mLastHotspotEnabledFromReceiver:Z

    .line 55
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHotspotNetworkInterface()Ljava/net/NetworkInterface;
    .locals 2

    const/4 p0, 0x0

    .line 135
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda0;-><init>()V

    .line 136
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private getWifiApState()I
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p0

    return p0
.end method

.method private isValidAddress(Ljava/net/InetAddress;)Z
    .locals 0

    .line 145
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p0

    if-nez p0, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getHotspotNetworkInterface$0(Ljava/net/NetworkInterface;)Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "swlan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private notifyHotspotStateChange()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private registerHotspotStateChangedReceiver()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setLastHotspotState(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mLastHotspotEnabledFromReceiver:Z

    return-void
.end method

.method private unRegisterHotspotStateChangedReceiver()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getHotspotAddressesWithSubnetPrefix()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getHotspotAddressesWithSubnetPrefix: There\'s no hotspot network interface"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getHotspotAddressesWithSubnetPrefix: There\'s no hotspot network InterfaceAddresses"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda1;-><init>()V

    .line 108
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda2;-><init>()V

    .line 111
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 115
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 117
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->isValidAddress(Ljava/net/InetAddress;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHotspotAddressesWithSubnetPrefix: skip invalid address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHotspotAddressesWithSubnetPrefix: networkPrefixLength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", addressWithSubnetPrefix: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v2
.end method

.method public isHotspotEnabled()Z
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerHotspotStateChangeEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->registerHotspotStateChangedReceiver()V

    return-void
.end method

.method public unregisterHotspotStateChangeEvent(Landroid/os/Handler;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->unRegisterHotspotStateChangedReceiver()V

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->setLastHotspotState(Z)V

    return-void
.end method
