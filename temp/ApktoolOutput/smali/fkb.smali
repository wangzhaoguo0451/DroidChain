.class final Lfkb;
.super Ljava/lang/Object;
.source "GetTopicLikeUsersDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/processor/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/processor/Processor",
        "<",
        "Ljava/lang/String;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;",
        "Lcom/wandoujia/rpc/http/exception/ContentParseException;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcvo;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    iput-object v0, p0, Lfkb;->a:Lcvo;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lfkb;->a:Lcvo;

    const-class v1, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    return-object v0
.end method
