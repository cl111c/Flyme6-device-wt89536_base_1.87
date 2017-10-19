.class Lcom/android/exsettings/LocksreenSettings$2;
.super Ljava/lang/Object;
.source "LocksreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/LocksreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/LocksreenSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/LocksreenSettings;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/exsettings/LocksreenSettings$2;->this$0:Lcom/android/exsettings/LocksreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings$2;->this$0:Lcom/android/exsettings/LocksreenSettings;

    # setter for: Lcom/android/exsettings/LocksreenSettings;->locksreentypeIndex:I
    invoke-static {v0, p2}, Lcom/android/exsettings/LocksreenSettings;->access$002(Lcom/android/exsettings/LocksreenSettings;I)I

    .line 241
    return-void
.end method
