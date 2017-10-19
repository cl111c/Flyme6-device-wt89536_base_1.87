.class Lcom/android/exsettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/exsettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mController:Lcom/android/exsettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideForgetButton:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mModify:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean p4, p0, Lcom/android/exsettings/wifi/WifiDialog;->mEdit:Z

    .line 60
    iput-boolean p5, p0, Lcom/android/exsettings/wifi/WifiDialog;->mModify:Z

    .line 61
    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    iput-object p3, p0, Lcom/android/exsettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 63
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideForgetButton:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z
    .param p6, "hideSubmitButton"    # Z
    .param p7, "hideForgetButton"    # Z

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V

    .line 52
    iput-boolean p6, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 53
    iput-boolean p7, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideForgetButton:Z

    .line 54
    return-void
.end method

.method private setBottomPanelBackgroundColor()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiDialog;->getSubmitButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 130
    .local v0, "bottomPanelLl":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 133
    :cond_0
    return-void
.end method

.method private setTitlePanelBackgroundColor()V
    .locals 8

    .prologue
    .line 100
    :try_start_0
    const-class v6, Landroid/app/AlertDialog;

    const-string v7, "mAlert"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 101
    .local v0, "alert":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 102
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "alertController":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mTitleView"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 107
    .local v5, "titleView":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 109
    .local v4, "titleV":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 113
    .local v3, "titlePanelLl":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_0

    .line 114
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    .end local v0    # "alert":Ljava/lang/reflect/Field;
    .end local v1    # "alertController":Ljava/lang/Object;
    .end local v3    # "titlePanelLl":Landroid/widget/LinearLayout;
    .end local v4    # "titleV":Landroid/view/View;
    .end local v5    # "titleView":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getController()Lcom/android/exsettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040144

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 77
    new-instance v0, Lcom/android/exsettings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/exsettings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/exsettings/wifi/WifiDialog;->mModify:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/WifiConfigController;-><init>(Lcom/android/exsettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    .line 78
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->hideSubmitButton()V

    .line 88
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideForgetButton:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->hideForgetButton()V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiDialog;->setTitlePanelBackgroundColor()V

    .line 95
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiDialog;->setBottomPanelBackgroundColor()V

    .line 96
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->updatePassword()V

    .line 138
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/exsettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/exsettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 162
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/exsettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    return-void
.end method
