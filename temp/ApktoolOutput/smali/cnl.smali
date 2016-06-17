.class public final Lcnl;
.super Ljava/lang/Object;
.source "FiveSystemAccountStorage.java"

# interfaces
.implements Lcnn;


# instance fields
.field private final a:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    .line 31
    return-void
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    const-string v2, "com.wandoujia"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 119
    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 123
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcnl;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/wandoujia/account/storage/AccountStorageException;

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->ACCOUNT_NOT_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    invoke-direct {v0, v1}, Lcom/wandoujia/account/storage/AccountStorageException;-><init>(Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;)V

    throw v0

    .line 247
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.wandoujia"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v2, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    const-string v3, "com.wandoujia"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 53
    array-length v3, v2

    if-eqz v3, :cond_0

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 58
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    const-string v2, "com.wandoujia"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 143
    iget-object v5, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v5, v4}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update default account auth for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", auth is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-direct {p0, v0, p1}, Lcnl;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcnl;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Replace account from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    const-string v2, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-direct {p0}, Lcnl;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-direct {p0, v0, p2}, Lcnl;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    new-instance v2, Lcnm;

    invoke-direct {v2, p0, p1, p2}, Lcnm;-><init>(Lcnl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    new-instance v2, Lcnm;

    invoke-direct {v2, p0, p1, p2}, Lcnm;-><init>(Lcnl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    const-string v0, ""

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v1

    .line 185
    if-nez v1, :cond_0

    .line 191
    :goto_0
    return-object v0

    .line 189
    :cond_0
    :try_start_0
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "WDJ_ACCOUNT_USERNAME"

    invoke-direct {p0, v1, v2}, Lcnl;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/wandoujia/account/storage/AccountStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 288
    const-string v3, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v3, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-static {}, Lchv;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v3, "WDJ_ACCOUNT_COMPLETED"

    invoke-static {}, Lchv;->o()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v3, "WDJ_ACCOUNT_UID"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Landroid/accounts/Account;

    const-string v3, "com.wandoujia"

    invoke-direct {v0, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_1
    return-void

    .line 296
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.wandoujia"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    const-string v0, ""

    .line 205
    :goto_0
    return-object v0

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "WDJ_ACCOUNT_UID"

    invoke-direct {p0, v0, v1}, Lcnl;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/wandoujia/account/storage/AccountStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcnl;->f()Landroid/accounts/Account;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Landroid/accounts/Account;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcnl;->a:Landroid/accounts/AccountManager;

    const-string v2, "com.wandoujia"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 273
    array-length v2, v1

    if-nez v2, :cond_0

    .line 278
    :goto_0
    return-object v0

    .line 276
    :cond_0
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method
