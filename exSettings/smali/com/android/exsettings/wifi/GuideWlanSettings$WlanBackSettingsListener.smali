.class Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;
.super Ljava/lang/Object;
.source "GuideWlanSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/GuideWlanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WlanBackSettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanSettings;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$000(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$100(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->textViewTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$200(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->wifiSettingsFragmentLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$300(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    iget-object v0, v0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener$1;-><init>(Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    return-void
.end method
