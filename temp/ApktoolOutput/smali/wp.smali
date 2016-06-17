.class public final Lwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/app/MspService;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/MspService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lwp;->a:Lcom/alipay/android/app/MspService;

    iput-object p2, p0, Lwp;->b:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 216
    new-instance v0, Lwv;

    .line 217
    iget-object v1, p0, Lwp;->a:Lcom/alipay/android/app/MspService;

    invoke-virtual {v1}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lwp;->b:Ljava/lang/String;

    .line 216
    invoke-direct {v0, v1, v2, v3}, Lwv;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lwv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    return-void
.end method
