.class public Lcom/android/exsettings/wakeup/GestureTipActivity;
.super Landroid/app/Activity;
.source "GestureTipActivity.java"


# instance fields
.field private background:Landroid/widget/ImageView;

.field private dismissButton:Landroid/widget/Button;

.field private isGesture:Z

.field private mAnim:Landroid/widget/ImageView;

.field private mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mTipsContent:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private otherAnim:Landroid/widget/ImageView;

.field private settings:Landroid/content/SharedPreferences;

.field private spKey:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->type:I

    .line 36
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wakeup/GestureTipActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureTipActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wakeup/GestureTipActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureTipActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wakeup/GestureTipActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureTipActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wakeup/GestureTipActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureTipActivity;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 44
    const v1, 0x7f040077

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wakeup/GestureTipActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "mIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 47
    const-string v1, "gesture_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->type:I

    .line 49
    :cond_0
    const-string v1, "com.android.settings_preferences"

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->settings:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 55
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 56
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 57
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 58
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 59
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 60
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const v5, 0x7f05000a

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    const v0, 0x7f1200e2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f1200e3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f1200e1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->dismissButton:Landroid/widget/Button;

    .line 70
    const v0, 0x7f1200e5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mCheckbox:Landroid/widget/CheckBox;

    .line 71
    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    .line 72
    iget v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->settings:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->dismissButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/exsettings/wakeup/GestureTipActivity$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wakeup/GestureTipActivity$1;-><init>(Lcom/android/exsettings/wakeup/GestureTipActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void

    .line 74
    :pswitch_0
    const v0, 0x7f0c0c83

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cc8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 79
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 80
    const-string v0, "c_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 81
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto :goto_0

    .line 84
    :pswitch_1
    const v0, 0x7f0c0c84

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cc9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 90
    const-string v0, "e_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 91
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 94
    :pswitch_2
    const v0, 0x7f0c0c85

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 99
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 100
    const-string v0, "w_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 101
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 104
    :pswitch_3
    const v0, 0x7f0c0c86

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0ccb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 110
    const-string v0, "m_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 111
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 114
    :pswitch_4
    const v0, 0x7f0c0c87

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0ccc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 120
    const-string v0, "o_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 121
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 124
    :pswitch_5
    const v0, 0x7f0c0c88

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0ccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 130
    const-string v0, "s_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 131
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 134
    :pswitch_6
    const v0, 0x7f0c0c89

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 135
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 139
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 140
    const-string v0, "z_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 141
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 144
    :pswitch_7
    const v0, 0x7f0c0c8a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 145
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0ccf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 149
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 150
    const-string v0, "up_arrow_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 151
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 154
    :pswitch_8
    const v0, 0x7f0c0c8b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 160
    const-string v0, "down_arrow_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 161
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 164
    :pswitch_9
    const v0, 0x7f0c0c8c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 170
    const-string v0, "right_arrow_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 171
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 174
    :pswitch_a
    const v0, 0x7f0c0c8d

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 180
    const-string v0, "double_click_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 181
    iput-boolean v4, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 184
    :pswitch_b
    const v0, 0x7f0c0c8e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 190
    const-string v0, "scroll_up_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 191
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 194
    :pswitch_c
    const v0, 0x7f0c0c8f

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 200
    const-string v0, "scroll_down_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 201
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 204
    :pswitch_d
    const v0, 0x7f0c0c90

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 205
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 208
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 209
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 210
    const-string v0, "scroll_left_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 211
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 214
    :pswitch_e
    const v0, 0x7f0c0c91

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cd6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 219
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 220
    const-string v0, "scroll_right_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 221
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 224
    :pswitch_f
    const v0, 0x7f0c0ca0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cda

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 232
    const-string v0, "kinect_dial_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 233
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 236
    :pswitch_10
    const v0, 0x7f0c0ca2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cdd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 243
    const-string v0, "kinect_answer_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 244
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 247
    :pswitch_11
    const v0, 0x7f0c0c9c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cdb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 253
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 254
    const-string v0, "auto_mute_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 255
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 260
    :pswitch_12
    const v0, 0x7f0c0ca4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0ca5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 266
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 267
    const-string v0, "kinect_switch_tips"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 268
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 271
    :pswitch_13
    const v0, 0x7f0c0c97

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 272
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0c98

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 274
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 277
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 278
    const-string v0, "kinect_screenshot"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 279
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 282
    :pswitch_14
    const v0, 0x7f0c0c95

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 283
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0c96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 285
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 288
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 289
    const-string v0, "kinect_volume"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 290
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 294
    :pswitch_15
    const v0, 0x7f0c0c9e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTitle:Ljava/lang/CharSequence;

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mTipsContent:Landroid/widget/TextView;

    const v1, 0x7f0c0cdc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 296
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 299
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->otherAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 300
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 301
    const-string v0, "alarm_auto_mute"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;

    .line 302
    iput-boolean v3, p0, Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
