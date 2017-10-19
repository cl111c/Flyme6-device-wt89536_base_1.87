.class Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;->this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 708
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "mRotationPolicyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    # getter for: Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sRotationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;
    invoke-static {}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->access$1000()Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;->this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider;

    # getter for: Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->access$900(Lcom/android/exsettings/widget/SettingsAppWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 710
    iget-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;->this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider;

    # getter for: Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->access$900(Lcom/android/exsettings/widget/SettingsAppWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 711
    return-void
.end method
