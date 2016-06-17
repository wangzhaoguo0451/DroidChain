.class public final Lgih;
.super Lfxm;
.source "VideoPlayHtml5Fragment.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 605
    iput-object p1, p0, Lgih;->a:Ljava/lang/String;

    .line 606
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lgih;->a:Ljava/lang/String;

    return-object v0
.end method
