.class public Lcom/android/exsettings/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/exsettings/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/exsettings/CheckableRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 47
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 48
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/android/exsettings/CheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/android/exsettings/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/exsettings/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 51
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/exsettings/CheckableRelativeLayout;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 64
    iput-boolean p1, p0, Lcom/android/exsettings/CheckableRelativeLayout;->mChecked:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/CheckableRelativeLayout;->refreshDrawableState()V

    .line 67
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/exsettings/CheckableRelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/CheckableRelativeLayout;->setChecked(Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
