.class Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$1;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettingslib/wifi/AccessPoint;Lcom/android/exsettingslib/wifi/AccessPoint;)I
    .locals 2
    .param p1, "ap1"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "ap2"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lcom/android/exsettingslib/wifi/AccessPoint;

    check-cast p2, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$1;->compare(Lcom/android/exsettingslib/wifi/AccessPoint;Lcom/android/exsettingslib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method
