.class public final Lcom/wandoujia/update/toolkit/UpdateClient;
.super Ljava/lang/Object;
.source "UpdateClient.java"

# interfaces
.implements Lhqm;


# instance fields
.field public a:Lcom/wandoujia/update/LocalUpdateService;

.field public b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

.field private c:Landroid/content/ServiceConnection;

.field private d:Landroid/content/Context;

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/app/ProgressDialog;

.field private g:Lcom/wandoujia/update/protocol/UpdateInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->STOP:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    .line 37
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->GET_UPDATE_INFO:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    if-eq v0, v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->c()V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    sget v2, Lcom/wandoujia/update/R$string;->upgrade_checkupdate_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->DOWNLOAD_AND_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    if-eq v0, v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->c()V

    .line 126
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    sget v2, Lcom/wandoujia/update/R$string;->upgrade_download_new_version:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    sget v2, Lcom/wandoujia/update/R$string;->upgrade_downloading_new_version:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    new-instance v1, Lhrl;

    invoke-direct {v1, p0}, Lhrl;-><init>(Lcom/wandoujia/update/toolkit/UpdateClient;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 61
    sget-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->GET_UPDATE_INFO:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    .line 62
    iput-object p1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    iput-object p0, v0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    .line 67
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0}, Lcom/wandoujia/update/LocalUpdateService;->a()Z

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 63
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    sget v2, Lcom/wandoujia/update/R$string;->upgrade_checking_update:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    new-instance v1, Lhrh;

    invoke-direct {v1, p0}, Lhrh;-><init>(Lcom/wandoujia/update/toolkit/UpdateClient;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_4

    .line 72
    new-instance v0, Lhrg;

    invoke-direct {v0, p0}, Lhrg;-><init>(Lcom/wandoujia/update/toolkit/UpdateClient;)V

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->c:Landroid/content/ServiceConnection;

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->c:Landroid/content/ServiceConnection;

    invoke-static {p1, v0, p2}, Lhrm;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)Z

    .line 90
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {p0, v0}, Lcom/wandoujia/update/toolkit/UpdateClient;->a(Lcom/wandoujia/update/protocol/UpdateInfo;)V

    goto :goto_1
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 98
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->GET_UPDATE_INFO:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    if-eq v0, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->c()V

    .line 102
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->hasNewVersion()Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    sget v2, Lcom/wandoujia/update/R$string;->upgrade_already_newest:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->ASK_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/wandoujia/update/R$string;->upgrade_force_download_yes:I

    new-instance v2, Lhrk;

    invoke-direct {v2, p0}, Lhrk;-><init>(Lcom/wandoujia/update/toolkit/UpdateClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/wandoujia/update/R$string;->cancel:I

    new-instance v2, Lhrj;

    invoke-direct {v2, p0}, Lhrj;-><init>(Lcom/wandoujia/update/toolkit/UpdateClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lhri;

    invoke-direct {v1, p0}, Lhri;-><init>(Lcom/wandoujia/update/toolkit/UpdateClient;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->DOWNLOAD_AND_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    if-eq v0, v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->c()V

    .line 135
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    .line 140
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    sget-object v1, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    const-string v2, "install()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/wandoujia/update/LocalUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/update/LocalUpdateService;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lg;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v1, v1, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    if-nez v1, :cond_4

    :cond_3
    sget-object v0, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    const-string v1, "not bound"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    goto :goto_0

    .line 141
    :cond_4
    :try_start_0
    iget-object v0, v0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v0, v0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    invoke-interface {v0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->DOWNLOAD_AND_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    if-eq v0, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->c()V

    .line 152
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    sget v2, Lcom/wandoujia/update/R$string;->upgrade_download_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0, p0}, Lcom/wandoujia/update/LocalUpdateService;->a(Lhqm;)V

    .line 42
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->c:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 45
    :cond_0
    iput-object v2, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->c:Landroid/content/ServiceConnection;

    .line 46
    iput-object v2, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->a:Lcom/wandoujia/update/LocalUpdateService;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 50
    iput-object v2, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->e:Landroid/app/ProgressDialog;

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    iput-object v2, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->f:Landroid/app/ProgressDialog;

    .line 56
    :cond_3
    sget-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->STOP:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    iput-object v0, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->b:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    .line 57
    iput-object v2, p0, Lcom/wandoujia/update/toolkit/UpdateClient;->d:Landroid/content/Context;

    .line 58
    return-void
.end method
