.class public Lcom/wandoujia/net/Headers$1;
.super Lcom/wandoujia/net/Multimap;
.source "Headers.java"


# instance fields
.field final synthetic this$0:Lepv;


# direct methods
.method public constructor <init>(Lepv;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wandoujia/net/Headers$1;->this$0:Lepv;

    invoke-direct {p0}, Lcom/wandoujia/net/Multimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected newList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/wandoujia/net/TaggedList;

    invoke-direct {v0}, Lcom/wandoujia/net/TaggedList;-><init>()V

    return-object v0
.end method
