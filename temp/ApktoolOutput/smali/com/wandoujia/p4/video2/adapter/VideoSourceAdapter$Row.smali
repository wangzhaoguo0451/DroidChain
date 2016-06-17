.class public Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;
.super Ljava/lang/Object;
.source "VideoSourceAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x63076c01059dac26L


# instance fields
.field public alias:Ljava/lang/String;

.field public isPrivate:Z

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    .line 76
    iput-boolean p3, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->isPrivate:Z

    .line 77
    iput-object p2, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->alias:Ljava/lang/String;

    .line 78
    return-void
.end method
