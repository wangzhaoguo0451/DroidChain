.class public Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;
.super Ljava/lang/Object;
.source "HistoryContentEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private k:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private ts:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;JJLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    #getter for: Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->access$000(Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;->t:Ljava/lang/String;

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;->k:Ljava/lang/String;

    .line 24
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;->ts:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;->udid:Ljava/lang/String;

    .line 26
    return-void
.end method
