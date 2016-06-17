.class public Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;
.super Ljava/lang/Object;
.source "NormalBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private collapsedImage:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "collapsed_image"
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "image"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollapsedImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;->collapsedImage:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;->image:Ljava/lang/String;

    return-object v0
.end method
