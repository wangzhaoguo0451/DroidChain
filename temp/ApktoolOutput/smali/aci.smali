.class public Laci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/bc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lacd;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 34
    invoke-static {v0}, Ld;->f(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lact;->a()Lact;

    move-result-object v0

    invoke-virtual {v0}, Lact;->b()V

    .line 37
    return-void
.end method

.method public b(Lacd;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p1}, Lacd;->c()Lacf;

    move-result-object v0

    .line 44
    invoke-static {}, Lact;->a()Lact;

    iget-object v0, v0, Lacf;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    invoke-static {}, Lact;->a()Lact;

    move-result-object v0

    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lact;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
