.class final Lacn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lacn;->a:Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Laco;

    sget-object v1, Lcom/alipay/wandoujia/fa;->f:Lcom/alipay/wandoujia/fa;

    .line 108
    iget-object v2, p0, Lacn;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-direct {v0, v1, v2}, Laco;-><init>(Lcom/alipay/wandoujia/fa;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Laco;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 113
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
