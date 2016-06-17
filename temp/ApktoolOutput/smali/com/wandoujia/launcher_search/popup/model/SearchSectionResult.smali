.class public Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;
.super Ljava/lang/Object;
.source "SearchSectionResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public description:Ljava/lang/String;

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public totalCount:I

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
