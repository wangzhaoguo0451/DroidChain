.class public Lfgl;
.super Ljava/lang/Object;
.source "CommunityTopicFeedModelConverter.java"

# interfaces
.implements Lfza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfza",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;",
        "Lfgh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    new-instance v0, Lfgh;

    invoke-direct {v0, p1}, Lfgh;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lfgl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
