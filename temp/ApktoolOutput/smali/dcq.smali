.class public Ldcq;
.super Lerl;
.source "WrapperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerl",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ldcm;


# direct methods
.method public constructor <init>(Ldcm;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lerl;-><init>()V

    .line 21
    iput-object p1, p0, Ldcq;->b:Ldcm;

    .line 22
    iget-object v0, p1, Lerv;->d:Ljava/util/List;

    iput-object v0, p0, Ldcq;->a:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/ViewGroup;Ljava/lang/Object;)Lerf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p2, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, p0, Ldcq;->b:Ldcm;

    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ldcm;->c(Landroid/view/ViewGroup;I)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ldcq;->b:Ldcm;

    invoke-virtual {v0}, Ldcm;->b()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Ldcq;->b:Ldcm;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Ldcq;->b:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Ldcq;->b:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->a(I)I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->values()[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
