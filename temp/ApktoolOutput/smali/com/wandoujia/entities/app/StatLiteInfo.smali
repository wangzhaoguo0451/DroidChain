.class public Lcom/wandoujia/entities/app/StatLiteInfo;
.super Ljava/lang/Object;
.source "StatLiteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field totalStr:Ljava/lang/String;

.field weeklyStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/wandoujia/entities/app/StatLiteInfo;->totalStr:Ljava/lang/String;

    return-object v0
.end method

.method public getWeeklyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/entities/app/StatLiteInfo;->weeklyStr:Ljava/lang/String;

    return-object v0
.end method
