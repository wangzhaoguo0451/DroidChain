.class public Lcom/wandoujia/account/dto/BuildVerificationGroupsRequest;
.super Ljava/lang/Object;
.source "BuildVerificationGroupsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groups$2bf82e34:[Ld;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>([Ld;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/wandoujia/account/dto/BuildVerificationGroupsRequest;->groups$2bf82e34:[Ld;

    .line 31
    return-void
.end method


# virtual methods
.method public getGroups$256008b3()[Ld;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/account/dto/BuildVerificationGroupsRequest;->groups$2bf82e34:[Ld;

    return-object v0
.end method

.method public setGroups$38c1bf([Ld;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/wandoujia/account/dto/BuildVerificationGroupsRequest;->groups$2bf82e34:[Ld;

    .line 27
    return-void
.end method
