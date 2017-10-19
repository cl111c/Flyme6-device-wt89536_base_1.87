.class Lcom/android/exsettings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/exsettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 67
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 57
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 58
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 61
    .local v1, "etable":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 63
    .end local v1    # "etable":Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/exsettings/EditPinPreference;->mPinListener:Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/exsettings/EditPinPreference;->mPinListener:Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/exsettings/EditPinPreference;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/exsettings/EditPinPreference;->mPinListener:Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;

    .line 49
    return-void
.end method

.method public showPinDialog()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 80
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 83
    :cond_1
    return-void
.end method
