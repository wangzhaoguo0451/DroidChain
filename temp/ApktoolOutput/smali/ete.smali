.class public final Lete;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "AccountAuthenticator.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcnt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lete;->a:Landroid/content/Context;

    .line 45
    new-instance v0, Lcnt;

    invoke-direct {v0, p1}, Lcnt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lete;->b:Lcnt;

    .line 46
    return-void
.end method

.method private a(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lete;->a:Landroid/content/Context;

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    invoke-virtual {p1, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 119
    return-object v1
.end method

.method private static a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 295
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 298
    return-object v0
.end method

.method static synthetic a(Lete;)Lcnt;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lete;->b:Lcnt;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 144
    const-string v0, "WDJ_AUTH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-static {}, Letz;->a()Letz;

    move-result-object v2

    iget-object v2, v2, Letz;->a:Lcmm;

    invoke-virtual {v2, v0}, Lcmm;->a(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lete;->b:Lcnt;

    invoke-virtual {v2}, Lcnt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lete;->b:Lcnt;

    invoke-virtual {v2, v1, v0}, Lcnt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lete;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lete;->b:Lcnt;

    invoke-virtual {v1}, Lcnt;->f()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_3

    .line 153
    invoke-static {p1, v0}, Lete;->c(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0, p1, v0}, Lete;->b(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0, p1}, Lete;->c(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method static synthetic a(Lete;Landroid/os/Bundle;Landroid/accounts/AccountManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lete;->b(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private b(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lete;->a:Landroid/content/Context;

    sget-object v2, Leth;->a:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    invoke-virtual {p1, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 134
    return-object v1
.end method

.method private b(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lete;->b:Lcnt;

    invoke-virtual {v0}, Lcnt;->f()Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Letf;

    invoke-direct {v1, p0, p1, p2}, Letf;-><init>(Lete;Landroid/os/Bundle;Landroid/accounts/AccountManager;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 193
    return-void
.end method

.method private static c(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 197
    const-string v0, "WDJ_AUTH"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    const-string v2, "WDJ_ACCOUNT_NICKNAME"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v3, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    const-string v4, "WDJ_ACCOUNT_UID"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    const-string v5, "WDJ_ACCOUNT_COMPLETED"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 205
    const-string v6, "WDJ_ACCOUNT_AVATAR"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    const-string v7, "WDJ_ACCOUNT_TELEPHONE"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 207
    const-string v8, "WDJ_ACCOUNT_EMAIL"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    const-string v9, "WDJ_ACCOUNT_EMAIL_VALIDATED"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 209
    const-string v10, "WDJ_ACCOUNT_TELEPHONE_VALIDATED"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 212
    new-instance v11, Landroid/accounts/Account;

    const-string v12, "com.wandoujia"

    invoke-direct {v11, v2, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 214
    const-string v13, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v13, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-virtual {v12, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v13, "WDJ_ACCOUNT_COMPLETED"

    invoke-virtual {v12, v13, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 218
    const-string v13, "WDJ_ACCOUNT_UID"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {v4}, Lchv;->d(Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-virtual {p1, v11, v0, v12}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 222
    invoke-static {v2}, Lchv;->f(Ljava/lang/String;)V

    .line 223
    invoke-static {v1}, Lchv;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {v3}, Lchv;->m(Ljava/lang/String;)V

    .line 225
    invoke-static {v0}, Lchv;->b(Ljava/lang/String;)V

    .line 226
    invoke-static {v5}, Lchv;->b(Z)V

    .line 227
    invoke-static {v6}, Lchv;->e(Ljava/lang/String;)V

    .line 228
    invoke-static {v10}, Lchv;->c(Z)V

    .line 229
    invoke-static {v9}, Lchv;->a(Z)V

    .line 230
    invoke-static {v8}, Lchv;->g(Ljava/lang/String;)V

    .line 231
    invoke-static {v7}, Lchv;->h(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    invoke-virtual {v0}, Letz;->b()V

    .line 234
    return-void
.end method


# virtual methods
.method public final addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add account, type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", features is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v0, "com.wandoujia"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "Unknown account type"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    if-eqz p5, :cond_5

    .line 63
    const-string v0, "WDJ_ACCOUNT_OPERATION"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    const-string v1, "WDJ_ACCOUNT_GET_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "WDJ_AUTH"

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "WDJ_ACCOUNT_NICKNAME"

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-static {}, Lchv;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "WDJ_ACCOUNT_COMPLETED"

    invoke-static {}, Lchv;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string v1, "WDJ_ACCOUNT_USERNAME"

    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "WDJ_ACCOUNT_UID"

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "WDJ_ACCOUNT_EMAIL"

    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "WDJ_ACCOUNT_TELEPHONE"

    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "WDJ_ACCOUNT_TELEPHONE_VALIDATED"

    invoke-static {}, Lchv;->p()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v1, "WDJ_ACCOUNT_EMAIL_VALIDATED"

    invoke-static {}, Lchv;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v1, "WDJ_ACCOUNT_AVATAR"

    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_1
    const-string v1, "WDJ_ACCOUNT_SAVE_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-direct {p0, p5}, Lete;->a(Landroid/os/Bundle;)V

    .line 96
    :cond_2
    :goto_1
    const-string v0, "account sdk"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 90
    :cond_3
    const-string v1, "WDJ_ACCOUNT_LOGOUT_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {}, Lchv;->D()V

    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    invoke-virtual {v0, v3}, Letz;->a(Z)V

    goto :goto_1

    .line 94
    :cond_4
    invoke-direct {p0, p1}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    :cond_5
    invoke-direct {p0, p1}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 101
    :cond_6
    if-eqz p5, :cond_8

    .line 102
    const-string v0, "WDJ_AUTH"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 103
    invoke-direct {p0, p5}, Lete;->a(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "account sdk"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 106
    :cond_7
    invoke-direct {p0, p1}, Lete;->b(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-direct {p0, p1}, Lete;->b(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Confirm account, account is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v0, "unimplement"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 249
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Edit account, type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const-string v0, "unimplement"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get auth, account is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-string v0, "unimplement"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    const-string v0, "unimplement"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update account, account is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const-string v0, "unimplement"

    invoke-static {p1, v0}, Lete;->a(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
