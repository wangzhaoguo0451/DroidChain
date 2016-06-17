.class Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$2;
.super Ljava/util/ArrayList;
.source "ProfileHistoryManager.java"


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
.field final synthetic this$0:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$2;->this$0:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    iput-object p3, p0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    new-instance v0, Lcom/wandoujia/p4/account/http/model/DeleteEntity;

    iget-object v1, p0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$2;->val$packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/account/http/model/DeleteEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$2;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method
