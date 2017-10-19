.class Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener$1;
.super Ljava/lang/Object;
.source "GuideWlanSettings.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 161
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "titleText--onAnimationEnd--setAnimationListener"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "com.android.guide"

    const-string v2, "com.android.guide.GuideGpsSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->startActivity(Landroid/content/Intent;)V

    .line 165
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/GuideWlanSettings;->finish()V

    .line 166
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 170
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 174
    return-void
.end method
