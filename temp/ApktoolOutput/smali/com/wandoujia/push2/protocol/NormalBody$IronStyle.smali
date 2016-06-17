.class public Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;
.super Ljava/lang/Object;
.source "NormalBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private icon:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "icon"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;->text:Ljava/lang/String;

    return-object v0
.end method
