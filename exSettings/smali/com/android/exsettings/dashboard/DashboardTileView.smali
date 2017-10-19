.class public Lcom/android/exsettings/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewWidget:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mTile:Lcom/android/exsettings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasSwitch"    # Z

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;ZLandroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasSwitch"    # Z
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x7f12007f

    const v5, 0x7f120033

    const v4, 0x7f120032

    const/4 v3, 0x1

    .line 62
    invoke-direct {p0, p1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v3, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mColSpan:I

    .line 63
    if-eqz p2, :cond_0

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040048

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f12001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    .line 71
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 83
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f020039

    invoke-virtual {p0, v1}, Lcom/android/exsettings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/exsettings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 86
    return-void

    .line 75
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040045

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f12005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/util/AttributeSet;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasSwitch"    # Z
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "hasImage"    # Z

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0, p1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v3, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mColSpan:I

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040046

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f120033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f120080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageViewWidget:Landroid/widget/ImageView;

    .line 96
    const v1, 0x7f12007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 98
    invoke-virtual {p0, p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f020039

    invoke-virtual {p0, v1}, Lcom/android/exsettings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/exsettings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageViewWidget()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageViewWidget:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/exsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/exsettings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 146
    .local v8, "numUserHandles":I
    if-le v8, v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-static {v0, v1}, Lcom/android/exsettings/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/exsettings/dashboard/DashboardTile;)V

    goto :goto_0

    .line 148
    :cond_2
    if-ne v8, v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/exsettings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    .end local v8    # "numUserHandles":I
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b7d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v4, v0

    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0b8a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v7, "i":Landroid/content/Intent;
    const-string v0, "com.codeaurora.STARTPROFILE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v0, "com.android.profile"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/exsettings/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    .line 125
    return-void
.end method
