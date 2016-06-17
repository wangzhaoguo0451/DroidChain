.class public Lcom/wandoujia/entities/app/BelongInfo;
.super Ljava/lang/Object;
.source "BelongInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private level:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/wandoujia/entities/app/BelongInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/wandoujia/entities/app/BelongInfo;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/entities/app/BelongInfo;->name:Ljava/lang/String;

    return-object v0
.end method
