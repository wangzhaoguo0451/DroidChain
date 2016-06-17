.class final Lelt;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lels;


# direct methods
.method constructor <init>(Lels;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lelt;->b:Lels;

    iput-object p2, p0, Lelt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lelt;->b:Lels;

    iget-object v0, v0, Lels;->a:Lelq;

    iget-object v1, p0, Lelt;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lelq;->a(Lelq;Ljava/lang/String;)V

    .line 96
    return-void
.end method
