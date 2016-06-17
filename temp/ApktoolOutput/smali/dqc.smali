.class final Ldqc;
.super Ljava/lang/Object;
.source "SearchFilterPresenter.java"

# interfaces
.implements Lhnt;


# instance fields
.field final a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Ldqc;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 161
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ldqc;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    return-object v0
.end method
