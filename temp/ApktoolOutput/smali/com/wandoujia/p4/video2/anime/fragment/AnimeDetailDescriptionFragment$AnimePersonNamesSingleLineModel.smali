.class public Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;
.super Ljava/lang/Object;
.source "AnimeDetailDescriptionFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5198918453a3500dL


# instance fields
.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public personType:Lcom/wandoujia/p4/video2/anime/AnimePersonType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/anime/AnimePersonType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;->personType:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 205
    iput-object p2, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;->names:Ljava/util/List;

    .line 206
    return-void
.end method
