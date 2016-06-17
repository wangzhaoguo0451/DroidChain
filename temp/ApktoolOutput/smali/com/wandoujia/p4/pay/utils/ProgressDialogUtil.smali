.class public Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;
.super Ljava/lang/Object;
.source "ProgressDialogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dismiss()V
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->TAG:Ljava/lang/String;

    const-string v2, "Dismiss existing progress dialog."

    invoke-static {v0, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    const-class v1, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Landroid/app/ProgressDialog;

    const v2, 0x7f0f0254

    invoke-direct {v0, p0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    .line 25
    :cond_0
    :goto_0
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 27
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->TAG:Ljava/lang/String;

    const-string v2, "Show progress dialog."

    invoke-static {v0, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 29
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v1

    return-void

    .line 20
    :cond_1
    :try_start_1
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->TAG:Ljava/lang/String;

    const-string v2, "Dismiss first when it is showing."

    invoke-static {v0, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
