.class Lcom/android/exsettings/CryptKeeper$9;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$9;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$9;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->access$2100(Lcom/android/exsettings/CryptKeeper;)V

    .line 991
    return-void
.end method
