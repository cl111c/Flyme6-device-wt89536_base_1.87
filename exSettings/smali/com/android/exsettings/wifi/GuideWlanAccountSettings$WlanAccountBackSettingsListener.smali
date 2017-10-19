.class Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;
.super Ljava/lang/Object;
.source "GuideWlanAccountSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/GuideWlanAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WlanAccountBackSettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$000(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$100(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$200(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$300(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$400(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$500(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v0, v0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;-><init>(Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 265
    return-void
.end method
