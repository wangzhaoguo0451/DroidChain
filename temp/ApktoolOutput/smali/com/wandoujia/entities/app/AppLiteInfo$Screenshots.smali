.class public Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;
.super Ljava/lang/Object;
.source "AppLiteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private normal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private small:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNormal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;->normal:Ljava/util/List;

    return-object v0
.end method

.method public getSmall()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;->small:Ljava/util/List;

    return-object v0
.end method

.method public setNormal(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;->normal:Ljava/util/List;

    .line 742
    return-void
.end method

.method public setSmall(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;->small:Ljava/util/List;

    .line 746
    return-void
.end method
