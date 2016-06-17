.class final Lcns;
.super Ljava/lang/Object;
.source "SDKSystemAccountStorage.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private synthetic a:Lcnp;


# direct methods
.method private constructor <init>(Lcnp;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcns;->a:Lcnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcnp;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcns;-><init>(Lcnp;)V

    return-void
.end method


# virtual methods
.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 102
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.wandoujia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v0, p0, Lcns;->a:Lcnp;

    invoke-static {v0}, Lcnp;->a(Lcnp;)V

    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
