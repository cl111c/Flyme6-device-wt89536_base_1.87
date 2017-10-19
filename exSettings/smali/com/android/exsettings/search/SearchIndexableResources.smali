.class public final Lcom/android/exsettings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x7f02014b

    const v9, 0x7f02013d

    const v6, 0x7f020192

    const v8, 0x7f020181

    const v7, 0x7f020177

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 106
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080068

    const-class v5, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f08006a

    const-class v5, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020153

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/nfc/NfcSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/nfc/NfcSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080036

    const-class v5, Lcom/android/exsettings/nfc/NfcSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020174

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02018e

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/MultisimAndDataSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/MultisimAndDataSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080034

    const-class v5, Lcom/android/exsettings/MultisimAndDataSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020199

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020199

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020159

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020159

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02016e

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020164

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02015f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02015f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/NotificationStatusbar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/notification/NotificationStatusbar;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080038

    const-class v5, Lcom/android/exsettings/notification/NotificationStatusbar;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080074

    const-class v5, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02018a

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080006

    const-class v5, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f08002f

    const-class v5, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020169

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020167

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02014e

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080018

    const-class v5, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02015b

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02013f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02017c

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02015d

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080024

    const-class v5, Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020163

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/LocksreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/LocksreenSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080031

    const-class v5, Lcom/android/exsettings/LocksreenSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02018f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/HomeScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/HomeScreenSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080026

    const-class v5, Lcom/android/exsettings/HomeScreenSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020166

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080058

    const-class v5, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02018e

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/applications/SystemApplicationsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/exsettings/applications/SystemApplicationsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080055

    const-class v5, Lcom/android/exsettings/applications/SystemApplicationsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0201a3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 440
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
