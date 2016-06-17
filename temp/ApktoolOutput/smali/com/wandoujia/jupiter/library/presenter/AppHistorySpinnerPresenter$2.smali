.class public Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;
.super Ljava/util/ArrayList;
.source "AppHistorySpinnerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/wandoujia/p4/account/http/model/DeleteEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldiq;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldiq;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;->this$0:Ldiq;

    iput-object p3, p0, Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    new-instance v0, Lcom/wandoujia/p4/account/http/model/DeleteEntity;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;->val$packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/account/http/model/DeleteEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method
