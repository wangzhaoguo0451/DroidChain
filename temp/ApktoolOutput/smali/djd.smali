.class final Ldjd;
.super Ljava/lang/Object;
.source "AppInstalledSpinnerPresenter.java"

# interfaces
.implements Lhnt;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ldjd;->a:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ldjd;->a:Ljava/lang/String;

    return-object v0
.end method
