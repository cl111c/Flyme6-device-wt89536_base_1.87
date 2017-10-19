.class Lcom/android/exsettings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/exsettings/LinkifyUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WifiSettings;->setOffMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettings$5;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 986
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings$5;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 988
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c04ed

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 990
    return-void
.end method
