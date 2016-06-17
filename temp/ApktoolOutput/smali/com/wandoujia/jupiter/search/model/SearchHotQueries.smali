.class public Lcom/wandoujia/jupiter/search/model/SearchHotQueries;
.super Ljava/lang/Object;
.source "SearchHotQueries.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x33dd4ca7062cf0b4L


# instance fields
.field public editorQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/BaseHotQueries$EditorQuery;",
            ">;"
        }
    .end annotation
.end field

.field public hotQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/model/SearchHotQueries$VerticalHotQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method
