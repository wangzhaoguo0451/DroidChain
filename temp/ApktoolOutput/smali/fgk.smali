.class public final Lfgk;
.super Ljava/lang/Object;
.source "CommunityReplyModelConverter.java"

# interfaces
.implements Lfza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfza",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;",
        "Lfgd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)Lfgd;
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Lfgd;

    invoke-direct {v0, p0}, Lfgd;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-static {p1}, Lfgk;->a(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)Lfgd;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lfgj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
