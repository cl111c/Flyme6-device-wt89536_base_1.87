.class final Lcom/android/server/policy/MisTouchActions$newDialog;
.super Landroid/app/Dialog;
.source "MisTouchActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MisTouchActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "newDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const v0, 0x10302ef

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 92
    const v0, 0x10900a1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
