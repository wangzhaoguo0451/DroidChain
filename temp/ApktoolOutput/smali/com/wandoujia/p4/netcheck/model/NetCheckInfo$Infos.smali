.class public Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;
.super Ljava/lang/Object;
.source "NetCheckInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private info:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->info:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->result:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->value:Ljava/lang/String;

    .line 131
    return-void
.end method
