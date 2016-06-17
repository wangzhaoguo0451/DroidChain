.class public Lcom/wandoujia/jupiter/search/model/SearchHotQueries$VerticalHotQuery;
.super Ljava/lang/Object;
.source "SearchHotQueries.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1a2c001962b9c89dL


# instance fields
.field public dailyHotQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/SearchHotQueries$HotQuery;",
            ">;"
        }
    .end annotation
.end field

.field public subType:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public weeklyHotQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/SearchHotQueries$HotQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
