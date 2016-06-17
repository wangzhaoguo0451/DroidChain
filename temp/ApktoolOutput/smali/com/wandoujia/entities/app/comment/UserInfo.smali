.class public Lcom/wandoujia/entities/app/comment/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private approval:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getApproval()Lcom/wandoujia/entities/app/comment/UserInfo$Approval;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/UserInfo;->approval:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/UserInfo;->id:J

    return-wide v0
.end method
