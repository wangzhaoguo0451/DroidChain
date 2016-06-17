.class final Lfvi;
.super Ljava/lang/Object;
.source "GiftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfvj;

.field private synthetic b:Lcom/wandoujia/p4/gift/http/model/GiftModel;


# direct methods
.method constructor <init>(Lfvj;Lcom/wandoujia/p4/gift/http/model/GiftModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lfvi;->a:Lfvj;

    iput-object p2, p0, Lfvi;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lfvi;->a:Lfvj;

    iget-object v1, p0, Lfvi;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {v0, v1}, Lfvj;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)V

    .line 89
    return-void
.end method
