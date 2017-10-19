.class Lcom/android/server/policy/PhoneWindowManager$38$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$38;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$38;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$38;)V
    .locals 0

    .prologue
    .line 8237
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$38$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8240
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$38$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$38;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->shouldStartFingerprintNavigation()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8241
    return-void
.end method
