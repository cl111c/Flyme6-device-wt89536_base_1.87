.class Lcom/android/exsettings/wifi/WifiSettingsGuide$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WifiSettingsGuide;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$2;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$2;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$400(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/content/Intent;)V

    .line 361
    return-void
.end method
