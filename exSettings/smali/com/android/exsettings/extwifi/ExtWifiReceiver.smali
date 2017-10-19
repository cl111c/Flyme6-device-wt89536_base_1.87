.class public Lcom/android/exsettings/extwifi/ExtWifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtWifiReceiver.java"


# static fields
.field private static SINGLE_QUOTES:C

.field private static mAirplaneWifiWarningDlg:Landroid/app/AlertDialog;

.field public static mCellularToWlanDialogNeverPopUp:Z

.field public static mCellularToWlanDialogUserClickCancelTime:J

.field private static mCellularToWlanDlg:Landroid/app/AlertDialog;

.field private static mCmccWarningDlg:Landroid/app/AlertDialog;

.field public static mCmccWarningDlgStartTime:J

.field private static mSignalWeakDlg:Landroid/app/AlertDialog;

.field private static mWifiDisconnectDlg:Landroid/app/AlertDialog;


# instance fields
.field private mBestApName:Ljava/lang/String;

.field private mBestApRssi:I

.field private mBestSignalNID:I

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHighestPriority:I

.field private mHighestPriorityNetworkId:I

.field private mHighestPriorityNetworkSSID:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserConfirmed:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 113
    const/16 v0, 0x22

    sput-char v0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->SINGLE_QUOTES:C

    .line 141
    sput-object v1, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiDisconnectDlg:Landroid/app/AlertDialog;

    .line 152
    sput-object v1, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDlg:Landroid/app/AlertDialog;

    .line 153
    sput-wide v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogUserClickCancelTime:J

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogNeverPopUp:Z

    .line 155
    sput-object v1, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mAirplaneWifiWarningDlg:Landroid/app/AlertDialog;

    .line 156
    sput-object v1, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCmccWarningDlg:Landroid/app/AlertDialog;

    .line 157
    sput-wide v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCmccWarningDlgStartTime:J

    .line 158
    sput-object v1, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mSignalWeakDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 127
    iput v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriority:I

    .line 128
    iput v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    .line 131
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestApRssi:I

    .line 132
    iput v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestSignalNID:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkSSID:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 83
    sput-object p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mAirplaneWifiWarningDlg:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestSignalNID:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 83
    sput-object p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mSignalWeakDlg:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/exsettings/extwifi/ExtWifiReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    return v0
.end method

.method static synthetic access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 83
    sput-object p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDlg:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getAvaiConfigNetworkSize()I
    .locals 10

    .prologue
    .line 793
    const/4 v5, -0x1

    .line 794
    .local v5, "invalidPriority":I
    const/4 v0, 0x0

    .line 796
    .local v0, "availableNetworkSize":I
    iget-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 797
    iget-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 798
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 799
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    .line 800
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 801
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 802
    .local v6, "result":Landroid/net/wifi/ScanResult;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zj712 rssi level028"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 803
    iget v8, v6, Landroid/net/wifi/ScanResult;->level:I

    const/16 v9, -0x55

    if-lt v8, v9, :cond_1

    .line 806
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v6}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 809
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v8, v5, :cond_1

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zj712 getAvaiConfigNetworkSize() -- 029"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 817
    return v0
.end method

.method private getBestSignalNetworkId()I
    .locals 10

    .prologue
    .line 710
    const/4 v4, -0x1

    .line 711
    .local v4, "networkId":I
    const/16 v7, -0xc8

    .line 712
    .local v7, "rssi":I
    iget-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 713
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 714
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_2

    if-eqz v6, :cond_2

    .line 715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 716
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 717
    .local v5, "result":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v5}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 720
    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v8, v7}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v8

    if-lez v8, :cond_1

    .line 721
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 722
    iget v7, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 723
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestApName:Ljava/lang/String;

    .line 724
    iput v7, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestApRssi:I

    goto :goto_0

    .line 730
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    const/16 v8, -0x4f

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v8

    if-lez v8, :cond_3

    .line 731
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zj712 there is ap\'s signal is better than -79.networkId 024="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 734
    .end local v4    # "networkId":I
    :goto_1
    return v4

    .restart local v4    # "networkId":I
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getHighestPriorityNetworkId()V
    .locals 11

    .prologue
    .line 764
    const/4 v4, 0x0

    .line 765
    .local v4, "highestPriorityNetworkSSID":Ljava/lang/String;
    const/4 v2, -0x1

    .line 766
    .local v2, "highestPriority":I
    const/4 v3, -0x1

    .line 768
    .local v3, "highestPriorityNetworkId":I
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 769
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 770
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 771
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_2

    .line 772
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 773
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 774
    .local v7, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    invoke-static {v7}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 777
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v9, v2, :cond_1

    .line 778
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 779
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 780
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 787
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    iput-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkSSID:Ljava/lang/String;

    .line 788
    iput v2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriority:I

    .line 789
    iput v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    .line 790
    return-void
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 841
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x4

    .line 853
    :goto_0
    return v0

    .line 843
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    const/4 v0, 0x2

    goto :goto_0

    .line 847
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 848
    const/4 v0, 0x3

    goto :goto_0

    .line 849
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 850
    const/4 v0, 0x5

    goto :goto_0

    .line 852
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zj712 private getSecurity: 030"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 830
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 833
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 835
    goto :goto_0

    .line 837
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private hasAvaApDuringUsingMobileData(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 543
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 544
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 545
    :cond_0
    const-string v6, "zj712 Wlan is not enable, no need pop 018"

    invoke-static {v6}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 574
    :cond_1
    :goto_0
    return v5

    .line 548
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 549
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 550
    :cond_3
    const-string v6, "zj712 No available AP, no need pop 019"

    invoke-static {v6}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_4
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 556
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 560
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 563
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 564
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getHighestPriorityNetworkId()V

    .line 567
    iget v6, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkSSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 569
    :cond_5
    const-string v6, "zj712 Get network id -1, or get ssid null, no cellular->wlan dialog 020"

    invoke-static {v6}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_6
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isCmccFeatureDefaultValueSaved()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 896
    iget-object v2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cmcc_wifi_default_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isManuallyDisconnectFromAp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 857
    iget-object v2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disconnect_from_network"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 864
    .local v0, "isManuallyDisconnect":Z
    :goto_0
    if-nez v0, :cond_0

    .line 865
    iget-object v2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disconnect_from_network"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 868
    :cond_0
    return v0

    .end local v0    # "isManuallyDisconnect":Z
    :cond_1
    move v0, v1

    .line 857
    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 306
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isSsidCmcc()Z
    .locals 5

    .prologue
    .line 676
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 677
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 678
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v3, "CMCC"

    invoke-static {v3}, Lcom/android/exsettings/extwifi/Utils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "ssidWithQuote":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 680
    :cond_0
    const/4 v3, 0x0

    .line 682
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 911
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v4, "cmcc_wifi"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 914
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 915
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "isConnected"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 916
    .local v1, "isConnected":Z
    const-string v3, "isConnected"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 917
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    return v1
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 492
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 493
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 494
    .local v1, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWifiSettingsActivity()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 740
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 742
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 743
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 744
    .local v1, "classname":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 745
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 747
    :cond_0
    if-eqz v2, :cond_2

    .line 748
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zj712 Class Name025:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 754
    :goto_0
    if-eqz v1, :cond_3

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.settings.SubSettings$WifiSubSettings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 756
    :cond_1
    const-string v3, "zj712 In wifi settings screen!027"

    invoke-static {v3}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    move v3, v4

    .line 760
    :goto_1
    return v3

    .line 751
    :cond_2
    const-string v3, "zj712 ComponentName is null026"

    invoke-static {v3}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v5

    .line 760
    goto :goto_1
.end method

.method private needPromptCmccWarningDialog()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notify_user_when_connect_cmcc"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private promptCellular2WlanDialog(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v12, 0x104000a

    const/high16 v11, 0x1040000

    const/16 v10, 0x7d3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 593
    sget-object v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDlg:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cellular_to_wlan_type"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 598
    .local v1, "dataToWifiConnectType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zj712 mHighestPriorityNetworkId 021="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "zj712 //mHighestPriorityNetworkSSID 022="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 600
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogUserClickCancelTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 603
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 604
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v12, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$10;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$10;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 625
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0d7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 626
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0d92

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkSSID:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 631
    .local v2, "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$11;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$11;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 636
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Window;->setType(I)V

    .line 637
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 638
    sput-object v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDlg:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 640
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    if-ne v1, v9, :cond_3

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogUserClickCancelTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 643
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0d93

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 645
    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$12;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$12;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v12, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$13;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$13;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 661
    .restart local v2    # "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$14;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$14;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 666
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Window;->setType(I)V

    .line 667
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 668
    sput-object v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDlg:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 671
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    :cond_3
    const-string v4, "zj712 auto mode, do nothing 023"

    invoke-static {v4}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private promptCmccIsConnected()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d94

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 693
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 821
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 822
    .local v0, "length":I
    if-le v0, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->SINGLE_QUOTES:C

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->SINGLE_QUOTES:C

    if-ne v1, v2, :cond_0

    .line 824
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 826
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static resetCellularToWlanDialogControlParas()V
    .locals 2

    .prologue
    .line 583
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogUserClickCancelTime:J

    .line 585
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogNeverPopUp:Z

    .line 586
    return-void
.end method

.method private setCmccFeatureDefaultValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 872
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isCmccFeatureDefaultValueSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    const-string v0, "zj712 set default one time 031"

    invoke-static {v0}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cellular_to_wlan_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 877
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_connect_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 880
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_to_cellular_hint"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notify_user_when_connect_cmcc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->setDefaultValueSaved()V

    .line 888
    return-void
.end method

.method private setDefaultValueSaved()V
    .locals 3

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmcc_wifi_default_value"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    return-void
.end method

.method private setWifiStatusAsconnected()V
    .locals 5

    .prologue
    .line 902
    iget-object v2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v3, "cmcc_wifi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 905
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 906
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isConnected"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 907
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 908
    return-void
.end method

.method private showDialogInAirplaneMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 326
    const v5, 0x7f1200c1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    .local v4, "textView":Landroid/widget/TextView;
    const v5, 0x7f0c0d97

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 328
    const v5, 0x7f1200c2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 330
    .local v1, "checkBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/exsettings/extwifi/ExtWifiReceiver$1;

    invoke-direct {v5, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$1;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 337
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 338
    const v5, 0x7f0c0d98

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 340
    .local v2, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 341
    new-instance v5, Lcom/android/exsettings/extwifi/ExtWifiReceiver$2;

    invoke-direct {v5, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$2;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 347
    sput-object v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mAirplaneWifiWarningDlg:Landroid/app/AlertDialog;

    .line 348
    return-void
.end method

.method private showSelectSsidDlg()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 351
    sget-object v9, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mSignalWeakDlg:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v11, "wifi"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 355
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_0

    .line 358
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isWifiSettingsActivity()Z

    move-result v9

    if-nez v9, :cond_0

    .line 368
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 369
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_0

    .line 373
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    .line 374
    .local v7, "rssi":I
    const/4 v9, 0x5

    invoke-static {v7, v9}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    .line 375
    .local v6, "newSignalLevel":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zj712 wlan signal is 011"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 376
    if-gt v6, v12, :cond_0

    .line 380
    const-string v9, "zj712 Requirement: signal is too weak, disconnect! 012"

    invoke-static {v9}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 381
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 384
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/exsettings/extwifi/Utils;->isCellularWlanHintEnable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 385
    const-string v9, "zj712 Since hint is disable, return. 013"

    invoke-static {v9}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 390
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v2, :cond_3

    move v1, v10

    .line 391
    .local v1, "configCount":I
    :goto_1
    if-ge v1, v13, :cond_4

    .line 392
    const-string v9, "zj712 APs are less than 2, then no AP is better than current AP, just return 014"

    invoke-static {v9}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v1    # "configCount":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 396
    .restart local v1    # "configCount":I
    :cond_4
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getBestSignalNetworkId()I

    move-result v9

    iput v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestSignalNID:I

    .line 397
    const/4 v9, -0x1

    iget v11, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestSignalNID:I

    if-ne v9, v11, :cond_5

    .line 398
    const-string v9, "zj712 Can not get any best signal network id, return 015"

    invoke-static {v9}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_5
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "cellular_to_wlan_type"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 405
    .local v3, "dataToWifiConnectType":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v9, 0x104000a

    new-instance v11, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;

    invoke-direct {v11, p0, v3}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;I)V

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    const/high16 v9, 0x1040000

    new-instance v11, Lcom/android/exsettings/extwifi/ExtWifiReceiver$4;

    invoke-direct {v11, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$4;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    if-ne v3, v12, :cond_7

    .line 434
    const v9, 0x7f0c0d80

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 440
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 441
    .local v4, "dlg":Landroid/app/AlertDialog;
    new-instance v9, Lcom/android/exsettings/extwifi/ExtWifiReceiver$5;

    invoke-direct {v9, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$5;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 446
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 447
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 448
    sput-object v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mSignalWeakDlg:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 435
    .end local v4    # "dlg":Landroid/app/AlertDialog;
    :cond_7
    if-ne v3, v13, :cond_6

    .line 436
    iget-object v9, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c0d81

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestApName:Ljava/lang/String;

    aput-object v13, v12, v10

    invoke-virtual {v9, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private showWifiDisconnectedDlg()V
    .locals 7

    .prologue
    .line 458
    const-string v4, "zj712 Toast user wlan disconnect. 033"

    invoke-static {v4}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 459
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 460
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    .line 461
    .local v1, "isDataEnabled":Z
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_browser_interaction_remind"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 462
    .local v2, "isRemind":I
    if-eqz v1, :cond_2

    .line 464
    if-nez v2, :cond_1

    .line 465
    const-string v4, "zj712 Toast user wlan disconnect. 034"

    invoke-static {v4}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showWlanDisconnectToast()V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 471
    .local v0, "isAirplaneMode":I
    if-nez v0, :cond_0

    .line 472
    const-string v4, "zj712 Toast user wlan disconnect. 035"

    invoke-static {v4}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 474
    sget-boolean v4, Lcom/android/exsettings/extwifi/Utils;->isBoot:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v3, "it":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 484
    .end local v0    # "isAirplaneMode":I
    .end local v3    # "it":Landroid/content/Intent;
    :cond_2
    const-string v4, "zj712 Toast user wlan disconnect. 036"

    invoke-static {v4}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 486
    sget-boolean v4, Lcom/android/exsettings/extwifi/Utils;->isBoot:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showWifiDisconnectedDlg_noRemind()V

    goto :goto_0
.end method

.method private showWifiDisconnectedDlg_noRemind()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 501
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mConnService:Landroid/net/ConnectivityManager;

    .line 503
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 504
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 506
    .local v2, "isAirplaneModeOn":Z
    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z

    .line 507
    sget-object v3, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiDisconnectDlg:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const v4, 0x10302d9

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 509
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$6;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$6;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    const v3, 0x104000a

    new-instance v4, Lcom/android/exsettings/extwifi/ExtWifiReceiver$7;

    invoke-direct {v4, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$7;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    const v3, 0x7f0c0d7f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 523
    iget-object v3, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0d9e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 525
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 526
    .local v1, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 527
    new-instance v3, Lcom/android/exsettings/extwifi/ExtWifiReceiver$8;

    invoke-direct {v3, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$8;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 534
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 535
    sput-object v1, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiDisconnectDlg:Landroid/app/AlertDialog;

    .line 539
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :goto_1
    return-void

    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    move v2, v4

    .line 504
    goto :goto_0

    .line 537
    .restart local v2    # "isAirplaneModeOn":Z
    :cond_1
    const-string v3, "zj712 showWifiDisconnectedDlg  mWifiDisconnectDlg != null 017"

    invoke-static {v3}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showWlanDisconnectToast()V
    .locals 3

    .prologue
    .line 452
    const-string v0, "zj712 Toast user wlan disconnect. 016"

    invoke-static {v0}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 455
    return-void
.end method

.method private startService()V
    .locals 3

    .prologue
    .line 922
    const-string v1, "zj712 startService 000"

    invoke-static {v1}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.wifi.cmcc.CmccService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/extwifi/ExtWifiService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 926
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 163
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zj712 receive action001: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 168
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    sput-boolean v7, Lcom/android/exsettings/extwifi/Utils;->isBoot:Z

    .line 170
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->setCmccFeatureDefaultValue()V

    .line 171
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->startService()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 175
    .local v3, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_3

    .line 176
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->setWifiStatusAsconnected()V

    .line 177
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->needPromptCmccWarningDialog()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isSsidCmcc()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->promptCmccIsConnected()V

    .line 181
    :cond_2
    sget-object v5, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiDisconnectDlg:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 182
    sget-object v5, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiDisconnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    const/4 v5, 0x0

    sput-object v5, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiDisconnectDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 186
    :cond_3
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    .line 187
    const-string v5, "zj712 Disconnect from AP 002"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/android/exsettings/extwifi/Utils;->isSimCardReady()Z

    move-result v5

    if-nez v5, :cond_4

    .line 189
    const-string v5, "zj712 Sim card is not Ready, Wlan->Cellular Hint feature disable 003"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 194
    .local v2, "netType":I
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v2, v7, :cond_0

    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isWlan2CellularHintEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getHighestPriorityNetworkId()V

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zj712 The highest priority network id is 004"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isAutoConnectMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isManuallyDisconnectFromAp()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->getAvaiConfigNetworkSize()I

    move-result v5

    if-gt v5, v7, :cond_0

    .line 211
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showWifiDisconnectedDlg()V

    goto/16 :goto_0

    .line 216
    .end local v2    # "netType":I
    .end local v3    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_6
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 217
    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isAutoConnectMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 218
    const-string v5, "zj712 no cell->wlan dlg when auto mode 005"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_7
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isWifiSettingsActivity()Z

    move-result v5

    if-nez v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->isCellularWlanHintEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->hasAvaApDuringUsingMobileData(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->promptCellular2WlanDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 234
    :cond_8
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 235
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 237
    .local v4, "wifiState":I
    if-ne v4, v7, :cond_0

    .line 238
    const-string v5, "zj712 Wlan is trunning off by user, need toast 006"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/exsettings/extwifi/Utils;->isSimCardReady()Z

    move-result v5

    if-nez v5, :cond_9

    .line 240
    const-string v5, "zj712 no sim card, do not need popup, return 007"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_9
    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isWlan2CellularHintEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 248
    sget-boolean v5, Lcom/android/exsettings/extwifi/Utils;->isGuide:Z

    if-nez v5, :cond_a

    sget-boolean v5, Lcom/android/exsettings/extwifi/Utils;->factoryModeFlag:Z

    if-nez v5, :cond_a

    .line 249
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showWifiDisconnectedDlg()V

    goto/16 :goto_0

    .line 250
    :cond_a
    sget-boolean v5, Lcom/android/exsettings/extwifi/Utils;->isGuide:Z

    if-eqz v5, :cond_b

    .line 251
    sput-boolean v8, Lcom/android/exsettings/extwifi/Utils;->isGuide:Z

    goto/16 :goto_0

    .line 252
    :cond_b
    sget-boolean v5, Lcom/android/exsettings/extwifi/Utils;->factoryModeFlag:Z

    if-eqz v5, :cond_0

    .line 253
    sput-boolean v8, Lcom/android/exsettings/extwifi/Utils;->factoryModeFlag:Z

    goto/16 :goto_0

    .line 259
    .end local v4    # "wifiState":I
    :cond_c
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 260
    const/16 v5, 0xd

    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->isMobileDataEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0d91

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 271
    :cond_d
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 272
    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isAutoConnectMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 273
    const-string v5, "zj712 auto mode, reselect ssid feature is disabled 008"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :cond_e
    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mConnService:Landroid/net/ConnectivityManager;

    .line 278
    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mConnService:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_0

    .line 281
    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 283
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showSelectSsidDlg()V

    goto/16 :goto_0

    .line 286
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_f
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 287
    sget-object v5, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mAirplaneWifiWarningDlg:Landroid/app/AlertDialog;

    if-eqz v5, :cond_10

    .line 288
    const-string v5, "zj712 mAirplaneWifiWarningDlg is not null 009"

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_10
    iget-object v5, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/exsettings/extwifi/Utils;->needNotifyInAirplaneMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/exsettings/extwifi/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    const-string v6, "sys.boot_completed"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showDialogInAirplaneMode()V

    goto/16 :goto_0

    .line 295
    :cond_11
    const-string v5, "com.android.setting.GUIDE_WIFI"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 296
    sput-boolean v7, Lcom/android/exsettings/extwifi/Utils;->isGuide:Z

    goto/16 :goto_0

    .line 297
    :cond_12
    const-string v5, "com.mediatek.factorymode.ACTION_WLAN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    sput-boolean v7, Lcom/android/exsettings/extwifi/Utils;->factoryModeFlag:Z

    goto/16 :goto_0
.end method

.method public setCellularToWlanDialogUserClickCancelTime()V
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDialogUserClickCancelTime:J

    .line 590
    return-void
.end method
