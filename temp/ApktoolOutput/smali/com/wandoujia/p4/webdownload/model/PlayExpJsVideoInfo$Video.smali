.class public Lcom/wandoujia/p4/webdownload/model/PlayExpJsVideoInfo$Video;
.super Ljava/lang/Object;
.source "PlayExpJsVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final QUALITY_HIGH:Ljava/lang/String; = "HIGH"

.field public static final QUALITY_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final QUALITY_SUPER:Ljava/lang/String; = "SUPER"

.field public static final TYPE_M3U8:Ljava/lang/String; = "M3U8"

.field public static final TYPE_MP4:Ljava/lang/String; = "MP4"

.field private static final serialVersionUID:J = 0x4936469117bc0750L


# instance fields
.field public fileType:Ljava/lang/String;

.field public isAdvertisement:Z

.field public quality:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
